class CreateSpellDescriptorSpell < ActiveRecord::Migration
  def self.up
    create_table :spell_descriptors_spells, :id => false do |t|
      t.integer :spell_id
      t.integer :spell_descriptor_id
    end
  end

  def self.down
    drop_table :spell_descriptors_spells
  end
end
