class ChangeHitDiceFromCharacterClass < ActiveRecord::Migration
  def self.up
    change_column :character_classes, :hit_dice, :integer
    rename_column :character_classes, :hit_dice, :dice_id
  end

  def self.down
    rename_column :character_classes, :dice_id, :hit_dice
    change_column :character_classes, :hit_dice, :string
  end
end
