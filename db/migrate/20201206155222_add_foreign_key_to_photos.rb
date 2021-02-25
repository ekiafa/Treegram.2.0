class AddForeignKeyToPhotos < ActiveRecord::Migration
  def change
    add_foreign_key :photos, :followers
  end
end
