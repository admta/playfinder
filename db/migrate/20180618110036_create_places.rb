class CreatePlaces < ActiveRecord::Migration[5.2]
  def change
    create_table :places do |t|
      t.string :category
      t.string :title
      t.text :address
      t.boolean :indoor
      t.integer :default_age

      t.timestamps
    end
  end
end
