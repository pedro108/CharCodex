class CreateCharacterClasses < ActiveRecord::Migration
  def self.up
    create_table :character_classes do |t|
      t.string   :name,            :null => false
      t.text     :description,     :null => true
      t.string   :hit_dice,        :null => false
      t.float    :base_multiplier, :null => false
      t.boolean  :fortitude,       :null => false
      t.boolean  :reflex,          :null => false
      t.boolean  :will,            :null => false

      t.timestamps
    end
  end

  def self.down
    drop_table :character_classes
  end
end
