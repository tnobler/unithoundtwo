class CreateProperties < ActiveRecord::Migration[6.0]
  def change
    create_table :properties do |t|
      t.string :name
      t.string :street_address
      t.string :city
      t.string :state
      t.integer :zipcode
      t.integer :unit_count
      t.integer :year_built
      t.string :status
      t.decimal :asking_price
      t.decimal :purchase_price
      t.boolean :ae_flood_zone, default: false
      t.text :notes
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
