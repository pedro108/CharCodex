class CreateWeapons < ActiveRecord::Migration
  def self.up
    create_table :weapons do |t|
      t.string      :name, :null => false
      t.text        :description, :null => true
      t.string      :damage, :null => false
      t.references  :weapon_proficiency_level, :null => false
      t.references  :weapon_group, :null => true
      t.integer     :critical_threat, :null => true
      t.integer     :critical_power, :null => true
      t.integer     :range, :null => true
      t.float       :weight, :null => false
      t.float       :price, :null => false
      t.text        :obs, :null => false
    end
  end

  def self.down
    drop_table :weapons
  end
end
