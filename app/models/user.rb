class User < ApplicationRecord
  has_many :events
  has_many :sessions_by_users
end
