class CreateFeats < ActiveRecord::Migration
  def self.up
    create_table :feats do |t|
      t.string :name, :null => false
      t.text :description, :null => false
      t.references :feat_type, :null => false
      t.text :bonus, :null => false
      t.text :prerequisites, :null => false
    end
  end

  def self.down
    drop_table :feats
  end
end
