class AddStarTimeToSessionsByUser < ActiveRecord::Migration[6.1]
  def change
    add_column :sessions_by_users, :start_time, :integer
  end
end
