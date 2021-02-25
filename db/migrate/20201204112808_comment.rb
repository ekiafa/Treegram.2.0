class CommentTable < ActiveRecord::Migration
  def change
    create_table :comments do |c|
      c.column :user_id, :int
      c.column :photo_id, :int
      c.column :comment, :string
    end
  end
end
