class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :question
      t.integer :upvote
      t.integer :downvote
      t.datetime :created_at
      t.datetime :updated_at
      t.integer :user_id

      t.timestamps
    end
  end
end
