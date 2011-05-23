class AddVisibleToWriters < ActiveRecord::Migration
  def self.up
    add_column :writers, :visible, :boolean, :default => true
  end

  def self.down
    remove_column :writers, :visible
  end
end
