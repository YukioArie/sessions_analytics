class ApplicationController < ActionController::Base
  before_action :set_cookies_user_session
  def set_cookies_user_session
    unless cookies[:visitorId]
      cookies[:visitorId] = SecureRandom.uuid
      user = User.new(visitorId: cookies[:visitorId])
      user.save!
      SessionsByUser.create!(user_id: user.id)
    end
  end
end
