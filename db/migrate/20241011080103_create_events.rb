class CreateEvents < ActiveRecord::Migration[7.2]
  def change
    create_table :events do |t|
      t.datetime :event_at
      t.string :eventable_type, null: false
      t.string :key
      t.integer :eventable_id, null: false
      t.belongs_to :user, null: true
    end
  end
end
