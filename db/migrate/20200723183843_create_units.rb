class CreateUnits < ActiveRecord::Migration[6.0]
  def change
    create_table :units do |t|
      t.string :number
      t.integer :sqft
      t.string :beds
      t.string :baths
      t.string :floor_plan
      t.belongs_to :property, null: false, foreign_key: true

      t.timestamps
    end
  end
end
