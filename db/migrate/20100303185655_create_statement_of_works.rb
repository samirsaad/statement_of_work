class CreateStatementOfWorks < ActiveRecord::Migration
  def self.up
    create_table :statement_of_works do |t|
      t.integer :engine_yard_contact_id
      t.integer :company_contact_id
      t.integer :company_id
      t.string :title
      t.string :slug
      t.text :scope
      t.float :no_hours
      t.float :est_fee
      t.text :add_terms

      t.timestamps
    end
  end

  def self.down
    drop_table :statement_of_works
  end
end
