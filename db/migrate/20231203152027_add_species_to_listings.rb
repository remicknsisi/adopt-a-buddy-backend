class AddSpeciesToListings < ActiveRecord::Migration[7.0]
  def change
    add_column :listings, :species, :string
  end
end
