class RenameLevelFields < ActiveRecord::Migration
  def change
    rename_column :levels, :fastXP, :fast_xp
    rename_column :levels, :mediumXP, :medium_xp
    rename_column :levels, :slowXP, :slow_xp
    rename_column :levels, :badSavingThrow, :bad_saving_throw
    rename_column :levels, :goodSavingThrow, :good_saving_throw
  end
end
