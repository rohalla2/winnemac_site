class AddSentToContacts < ActiveRecord::Migration
  def change
    add_column :contacts, :sent, :boolean
  end
end
