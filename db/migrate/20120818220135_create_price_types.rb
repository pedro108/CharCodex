class CreatePriceTypes < ActiveRecord::Migration
  def self.up
    create_table :price_types do |t|
      t.string :name
      t.string :description
    end
  end

  def self.down
    drop_table :price_types
  end
end
