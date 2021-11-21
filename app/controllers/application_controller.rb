class ApplicationController < ActionController::Base
  before_action :set_cookies

  def set_cookies
    cookies[:visitorId] = SecureRandom.uuid unless cookies[:visitorId]
  end
end
