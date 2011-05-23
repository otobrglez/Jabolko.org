class AddAvatarToWriters < ActiveRecord::Migration
  def self.up
    add_column :writers, :avatar, :string
  end

  def self.down
    remove_column :writers, :avatar
  end
end
