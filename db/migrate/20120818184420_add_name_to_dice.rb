class AddNameToDice < ActiveRecord::Migration
  def self.up
    add_column :dices, :name, :string
  end

  def self.down
    remove_column :dices, :name
  end
end
