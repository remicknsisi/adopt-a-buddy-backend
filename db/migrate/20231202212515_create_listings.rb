class CreateListings < ActiveRecord::Migration[7.0]
  def change
    create_table :listings do |t|
      t.string :image
      t.string :name
      t.string :type
      t.string :sex
      t.integer :age
      t.timestamps
    end
  end
end
