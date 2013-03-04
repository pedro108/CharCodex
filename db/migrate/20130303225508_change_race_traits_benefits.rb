class ChangeRaceTraitsBenefits < ActiveRecord::Migration
  def up
    change_column :race_traits, :benefits, :text
  end

  def down
    change_column :race_traits, :benefits, :string
  end
end
