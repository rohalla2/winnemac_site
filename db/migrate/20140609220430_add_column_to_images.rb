class AddColumnToImages < ActiveRecord::Migration
  def change
  	add_column :images, :description, :string
  	add_column :images, :unit_id, :integer
  end
end
