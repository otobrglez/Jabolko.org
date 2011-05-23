class AddFacebookToWriters < ActiveRecord::Migration
  def self.up
    add_column :writers, :facebook, :string
  end

  def self.down
    remove_column :writers, :facebook
  end
end
