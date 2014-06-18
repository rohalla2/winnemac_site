class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :name
      t.string :email
      t.string :subject
      t.string :message
      t.boolean :read
      t.string :referred_from

      t.timestamps
    end
  end
end
