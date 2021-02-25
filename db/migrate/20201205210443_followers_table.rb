class FollowersTable < ActiveRecord::Migration
  def change
    create_table :followers do |f|
      f.column :user_id, :int
      f.column :photo_id, :int
   
    end
  end
end
