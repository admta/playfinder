class AddLinkToPlaces < ActiveRecord::Migration[5.2]
  def change
    add_column :places, :link, :text
  end
end
