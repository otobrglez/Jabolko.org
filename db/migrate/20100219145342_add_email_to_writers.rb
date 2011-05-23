class AddEmailToWriters < ActiveRecord::Migration
  def self.up
    add_column :writers, :email, :string
  end

  def self.down
    remove_column :writers, :email
  end
end
