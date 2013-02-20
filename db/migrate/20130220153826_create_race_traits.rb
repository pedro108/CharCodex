class CreateRaceTraits < ActiveRecord::Migration
  def up
    drop_table :race_traits

    create_table :race_traits do |t|
      t.integer :race_id
      t.string  :name
      t.string  :benefits
      t.text    :description
      t.text    :bonus
    end

    add_index :race_traits, :race_id
  end

  def down
    drop_table :race_traits

    create_table :race_traits, :id => false do |t|
      t.integer :feat_id
      t.integer :race_id
    end
  end
end
