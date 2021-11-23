class PagesController < ApplicationController
  before_action :set_page
  before_action :create_event

  def show
    console
  end

  private

  def create_event
    Event.create!(
      url: request.path,
      user_id: search_user,
      timestamp: Time.now.to_i,
      sessions_by_user_id: search_sessions
    )
  end

  def search_user
    user = User.where(visitorId: cookies[:visitorId]).first
    user.id
  end

  def search_sessions
    session = SessionsByUser.where(user_id: search_user).last
    session.id
  end
  
  def set_page
    @page = Page.where(title: params[:title]).first
  end
end

