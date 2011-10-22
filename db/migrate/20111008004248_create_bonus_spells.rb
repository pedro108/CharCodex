class CreateBonusSpells < ActiveRecord::Migration
  def self.up
    create_table :bonus_spells do |t|
      t.integer :ability_score, :null => false
      t.integer :spell_level, :null => false
      t.integer :bonus, :null => false
    end
  end

  def self.down
    drop_table :bonus_spells
  end
end
