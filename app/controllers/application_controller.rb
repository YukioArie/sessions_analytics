class ApplicationController < ActionController::Base
  before_action :set_cookies_and_user
  def set_cookies_and_user
    unless cookies[:visitorId]
      cookies[:visitorId] = SecureRandom.uuid
      User.create!(visitorId: cookies[:visitorId])
    end
  end
end
