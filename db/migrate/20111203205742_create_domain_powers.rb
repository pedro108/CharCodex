class CreateDomainPowers < ActiveRecord::Migration
  def self.up
    create_table :domain_powers do |t|
      t.integer :domain_id
      t.integer :feat_id
      t.integer :required_level
    end
  end

  def self.down
    drop_table :domain_powers
  end
end
