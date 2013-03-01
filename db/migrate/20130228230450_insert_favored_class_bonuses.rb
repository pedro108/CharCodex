class InsertFavoredClassBonuses < ActiveRecord::Migration
  def up
    FavoredClassBonus.create!([{
        :benefit => "+1 hit point",
        :bonus => ""
                               },{
        :benefit => "+1 skill point",
        :bonus => ""
                               }])

  end

  def down
    FavoredClassBonus.delete_all
  end
end
