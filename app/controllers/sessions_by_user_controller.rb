class SessionsByUserController < ApplicationController
  def index
    def index
      @sessions_by_user = SessionsByUser.all
      respond_to do |format|
        format.json { render json: @sessions_by_user }
      end
    end
  end
end
