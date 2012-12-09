class AddBenefitsToFeats < ActiveRecord::Migration
  def self.up
    add_column :feats, :benefits, :string
  end

  def self.down
    remove_column :feats, :benefits
  end
end
