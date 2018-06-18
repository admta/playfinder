class AddColumnToPlaces < ActiveRecord::Migration[5.2]
  def change
    add_column :places, :min_age, :integer
    add_column :places, :max_age, :integer
    remove_column :places, :default_age
  end
end
