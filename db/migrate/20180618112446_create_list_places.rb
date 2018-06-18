class CreateListPlaces < ActiveRecord::Migration[5.2]
  def change
    create_table :list_places do |t|
      t.references :place, foreign_key: true
      t.references :bucket_list, foreign_key: true

      t.timestamps
    end
  end
end
