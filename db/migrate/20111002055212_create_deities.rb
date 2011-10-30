class CreateDeities < ActiveRecord::Migration
  def self.up
    create_table :deities do |t|
      t.string, :name, :null => false
      t.text :description, :null => true
      t.integer :alignment_id, :null => false
    end
  end

  def self.down
    drop_table :deities
  end
end
