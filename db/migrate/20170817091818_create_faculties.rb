class CreateFaculties < ActiveRecord::Migration
  def change
    create_table :faculties do |t|
      t.string :name
      t.text :decsription
      t.integer :contact, :limit => 8
      t.string :mail_id

      t.timestamps null: false
    end
  end
end
