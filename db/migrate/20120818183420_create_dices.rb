class CreateDices < ActiveRecord::Migration
  def self.up
    create_table :dices do |t|
      t.integer :value
    end
  end

  def self.down
    drop_table :dices
  end
end
