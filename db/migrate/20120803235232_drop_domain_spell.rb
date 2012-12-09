class DropDomainSpell < ActiveRecord::Migration
  def self.up
    drop_table :domain_spells
  end

  def self.down
  end
end
