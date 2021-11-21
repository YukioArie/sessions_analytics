class PagesController < ApplicationController
  before_action :set_page
  def show
    console
  end

  private

  def set_page
    @page = Page.where(title: params[:title]).first
  end
end
