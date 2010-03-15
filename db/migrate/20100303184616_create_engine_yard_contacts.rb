class CreateEngineYardContacts < ActiveRecord::Migration
  def self.up
    create_table :engine_yard_contacts do |t|
      t.string :name
      t.string :email

      t.timestamps
    end
  end

  def self.down
    drop_table :engine_yard_contacts
  end
end
