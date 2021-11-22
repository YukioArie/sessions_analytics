class SessionsByUserController < ApplicationController
  before_action :get_session_users

  def index
    console
  end

  private

  def get_session_users
    @sessions_by_user = SessionsByUser.all.order(:user_id)
  end
end
