class CreateInstitutes < ActiveRecord::Migration
  def change
    create_table :institutes do |t|
      t.string :name
      t.string :mailid
      t.text :address
      t.integer :contact, :limit => 8

      t.timestamps null: false
    end
  end
end
