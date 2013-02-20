class CreateRogueTalents < ActiveRecord::Migration
  def change
    create_table :rogue_talents do |t|
      t.string :name
      t.text :benefit
      t.text :bonus
      t.boolean :advanced, :default => false
    end
  end
end
