class AddPriorityToRaceTraits < ActiveRecord::Migration
  def change
    add_column :race_traits, :priority, :integer
  end
end
