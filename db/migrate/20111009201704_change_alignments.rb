class ChangeAlignments < ActiveRecord::Migration
  def self.up
    remove_column :alignments, :type_id
  end

  def self.down
    add_column :alignments, :type_id, :integer
  end
end
