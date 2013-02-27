class DropDailySpells < ActiveRecord::Migration
  def up
    drop_table :daily_spells
  end

  def down
  end
end
