class CreateSessionsByUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :sessions_by_users do |t|
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
