class CreateDomains < ActiveRecord::Migration
  def self.up
    create_table :domains do |t|
      t.string :name
      t.string :granted_powers
      t.integer :domain_id
      t.text :bonus
    end
  end

  def self.down
    drop_table :domains
  end
end
