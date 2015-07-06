class AddSubtitleToUnit < ActiveRecord::Migration
  change_table :units do |t|
    t.string :subtitle
  end
end
