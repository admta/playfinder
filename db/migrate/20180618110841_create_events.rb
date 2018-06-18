class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :title
      t.text :description
      t.time :start_time
      t.time :end_time
      t.date :start_date
      t.references :place, foreign_key: true

      t.timestamps
    end
  end
end
