class RemoveDescriptionFromRaceTraits < ActiveRecord::Migration
  def up
    remove_column :race_traits, :description
  end

  def down
    add_column :race_traits, :description, :text
  end
end
