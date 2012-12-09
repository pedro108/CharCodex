class CreateDeityDomains < ActiveRecord::Migration
  def self.up
    create_table :deity_domains do |t|
      t.integer :deity_id, :null => false
      t.integer :domain_id, :null => false
    end
  end

  def self.down
    drop_table :deity_domains
  end
end
