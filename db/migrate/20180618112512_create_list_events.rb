class CreateListEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :list_events do |t|
      t.references :event, foreign_key: true
      t.references :bucket_list, foreign_key: true

      t.timestamps
    end
  end
end
