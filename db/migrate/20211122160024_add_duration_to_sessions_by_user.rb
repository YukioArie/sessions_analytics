class AddDurationToSessionsByUser < ActiveRecord::Migration[6.1]
  def change
    add_column :sessions_by_users, :duration, :integer, default: 0
    # Ex:- :default =>''
  end
end
