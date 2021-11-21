class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.string :url
      t.string :visitorId

      t.timestamps
    end
  end
end
