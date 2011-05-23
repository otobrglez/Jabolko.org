class CreateBanners < ActiveRecord::Migration
  def self.up
    create_table :banners do |t|
      t.string :url
      t.string :image
      t.boolean :published

      t.timestamps
    end
  end

  def self.down
    drop_table :banners
  end
end
