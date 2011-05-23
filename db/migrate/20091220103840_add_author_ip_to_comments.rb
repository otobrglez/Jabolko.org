class AddAuthorIpToComments < ActiveRecord::Migration
  def self.up
    add_column :comments, :author_ip, :string
  end

  def self.down
    remove_column :comments, :author_ip
  end
end
