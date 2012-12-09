class CreateMagicItemGroups < ActiveRecord::Migration
  def self.up
    create_table :magic_item_groups do |t|
      t.string :name, :null => false
      t.text :description
    end

    add_column :magic_items, :magic_item_group_id, :integer, :null => false
  end

  def self.down
    drop_table :magic_item_groups
    remove_column :magic_items, :magic_item_group_id
  end
end
