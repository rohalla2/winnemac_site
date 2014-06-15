class CreateSpaces < ActiveRecord::Migration
  def change
    create_table :spaces do |t|
      t.string :title
      t.string :description
      t.string :image_url
      t.float :price
      t.boolean :available

      t.timestamps
    end
  end
end
