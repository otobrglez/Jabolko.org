class AddNicknameToWriters < ActiveRecord::Migration
  def self.up
    add_column :writers, :nickname, :string
  end

  def self.down
    remove_column :writers, :nickname
  end
end
