class CreateFeatType < ActiveRecord::Migration
  def self.up
    create_table :feat_types do |t|
      t.string :name
    end
  end

  def self.down
    drop_table :feat_types
  end
end
