class ApplicationController < ActionController::Base
  before_action :set_cookies_user_session

  before_action :verify_quantity_events_by_sessions
  before_action :verify_duration_session

  def set_cookies_user_session
    unless cookies[:visitorId]
      cookies[:visitorId] = SecureRandom.uuid
      user = User.new(visitorId: cookies[:visitorId])
      user.save!
      SessionsByUser.create!(user_id: user.id, start_time: Time.now.to_i)
    end
  end

  def verify_quantity_events_by_sessions
    if quantity_events_by_user > 1
      update_duration_by_session
    end
  end

  def new_duration
    Time.now - Time.at(get_last_events_timestamp)
  end

  def get_last_events_timestamp
    get_last_session.events.last.timestamp
  end
  

  def update_duration_by_session
    get_last_session.update(duration: new_duration)
  end

  def verify_duration_session
    SessionsByUser.create!(user_id: search_user, start_time: Time.now) if get_last_session.duration > 10.minutes
  end

  def get_last_session
    SessionsByUser.where(user_id: search_user).last
  end

  def search_user
    user = User.where(visitorId: cookies[:visitorId]).first
    user.id
  end

  def quantity_events_by_user
    User.find(search_user).sessions_by_users.last.events.count
  end
end
