class AddFullnameToWriters < ActiveRecord::Migration
  def self.up
    add_column :writers, :fullname, :string
  end

  def self.down
    remove_column :writers, :fullname
  end
end
