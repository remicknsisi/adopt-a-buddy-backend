class RemoveTypeFromListings < ActiveRecord::Migration[7.0]
  def change
    remove_column :listings, :type
  end
end
