class ChangeCharacterAttribute < ActiveRecord::Migration
  def self.up
    change_table :character_attributes do |t|
      t.rename :quantity, :value
    end
  end

  def self.down
    change_table :character_attributes do |t|
      t.rename :value, :quantity
    end
  end
end
