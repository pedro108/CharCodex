class ChangeDomain < ActiveRecord::Migration
  def self.up
    rename_column :domains, :granted_powers, :description
    remove_column :domains, :bonus
    remove_column :domain_powers, :feat_id

    add_column :domain_powers, :name, :string
    add_column :domain_powers, :description, :text
    add_column :domain_powers, :bonus, :text
  end

  def self.down
    rename_column :domains, :description, :granted_powers
    add_column :domains, :bonus, :text
    add_column :domain_powers, :feat_id, :integer

    remove_column :domain_powers, :name
    remove_column :domain_powers, :description
    remove_column :domain_powers, :bonus
  end
end
