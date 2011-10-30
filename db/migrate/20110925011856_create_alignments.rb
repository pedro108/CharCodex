class CreateAlignments < ActiveRecord::Migration
  def self.up
    create_table :alignments do |t|
     t.string :name, :null=>false
     t.integer :type_id, :null=>false
    end
  end

  def self.down
    drop_table :alignments
  end
end
