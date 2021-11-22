class AddTimestampToEvent < ActiveRecord::Migration[6.1]
  def change
    add_column :events, :timestamp, :time
  end
end
