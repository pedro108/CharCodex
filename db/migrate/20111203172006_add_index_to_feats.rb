class AddIndexToFeats < ActiveRecord::Migration
  def self.up
    add_index :feats, :feat_type_id
  end

  def self.down
    remove_index :feats, :feat_type_id
  end
end
