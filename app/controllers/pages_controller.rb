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

      visitorId: cookies[:visitorId],

      user_id: search_user
    )
  end

  def search_user
    user = User.where(visitorId: cookies[:visitorId]).first

    user.id
  end

  def set_page
    @page = Page.where(title: params[:title]).first
  end
end
