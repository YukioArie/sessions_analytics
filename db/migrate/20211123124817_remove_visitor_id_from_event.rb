class RemoveVisitorIdFromEvent < ActiveRecord::Migration[6.1]
  def change
    remove_column :events, :visitorId, :integer
  end
end
