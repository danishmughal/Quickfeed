class CreateReadPosts < ActiveRecord::Migration
  def change
    create_table :read_posts do |t|

      t.string :post_id
      t.integer :user_id
      
      t.timestamps
    end
  end
end