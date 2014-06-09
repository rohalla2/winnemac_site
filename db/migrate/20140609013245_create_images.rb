class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :image_url
      t.boolean :main

      t.timestamps
    end
  end
end
