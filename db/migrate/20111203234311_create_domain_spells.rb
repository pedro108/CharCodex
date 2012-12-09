class CreateDomainSpells < ActiveRecord::Migration
  def self.up
    create_table :domain_spells do |t|
      t.integer :domain_id, :null => false
      t.integer :spell_id, :null => false
      t.integer :spell_level, :null => false
    end
  end

  def self.down
    drop_table :domain_spells
  end
end
