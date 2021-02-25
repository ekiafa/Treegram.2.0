class AddFollowerIdToFollowers < ActiveRecord::Migration
  def change
    add_column :followers, :follower_id, :int
  end
end
