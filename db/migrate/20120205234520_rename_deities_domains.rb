class RenameDeitiesDomains < ActiveRecord::Migration
  def self.up
    rename_table :deity_domains, :deities_domains
    remove_column :deities_domains, :id
  end

  def self.down
    rename_table :deities_domains, :deity_domains
  end
end
