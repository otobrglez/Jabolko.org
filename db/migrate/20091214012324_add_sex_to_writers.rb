class AddSexToWriters < ActiveRecord::Migration
  def self.up
    add_column :writers, :sex, :string
  end

  def self.down
    remove_column :writers, :sex
  end
end
