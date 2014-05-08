class CreateUnits < ActiveRecord::Migration
  def change
    create_table :units do |t|
      t.string :title
      t.integer :price
      t.boolean :available
      t.text :description

      t.timestamps
    end
  end
end
