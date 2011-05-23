class AddWwwLabelToWriters < ActiveRecord::Migration
  def self.up
    add_column :writers, :www_label, :string
  end

  def self.down
    remove_column :writers, :www_label
  end
end
