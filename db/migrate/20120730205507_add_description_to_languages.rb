class AddDescriptionToLanguages < ActiveRecord::Migration
  def self.up
    add_column :languages, :description, :text
  end

  def self.down
    remove_column :languages, :description
  end
end
