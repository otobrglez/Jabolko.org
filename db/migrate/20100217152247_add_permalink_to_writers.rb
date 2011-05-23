class AddPermalinkToWriters < ActiveRecord::Migration
  def self.up
    add_column :writers, :permalink, :string
  end

  def self.down
    remove_column :writers, :permalink
  end
end
