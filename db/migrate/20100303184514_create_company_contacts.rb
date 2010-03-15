class CreateCompanyContacts < ActiveRecord::Migration
  def self.up
    create_table :company_contacts do |t|
      t.integer :company_id
      t.string :name
      t.string :email

      t.timestamps
    end
  end

  def self.down
    drop_table :company_contacts
  end
end
