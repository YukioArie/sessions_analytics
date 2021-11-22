class AddSessionsByUserToEvents < ActiveRecord::Migration[6.1]
  def change
    add_reference :events, :sessions_by_user, null: false, foreign_key: true
  end
end
