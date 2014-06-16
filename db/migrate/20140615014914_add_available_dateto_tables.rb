class AddAvailableDatetoTables < ActiveRecord::Migration
  def change
  	add_column :spaces, :date_available, :date
  	add_column :units, :date_available, :date
  end
end
