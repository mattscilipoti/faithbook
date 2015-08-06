class CommentsBelongToProfiles < ActiveRecord::Migration
  def change
    add_column :comments, :profile_id, :integer, index: true, foreign_key: true
  end
end
