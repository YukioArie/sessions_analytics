class Event < ApplicationRecord
  belongs_to :user
  belongs_to :sessions_by_user
end
