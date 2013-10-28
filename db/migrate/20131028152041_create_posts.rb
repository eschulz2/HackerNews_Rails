class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.text :title
      t.integer :user_id
      t.text :content

      t.timestamps
    end
  end
end
