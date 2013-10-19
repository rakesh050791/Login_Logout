class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :comment_box
      t.integer :user_id
      t.integer :blog_id

      t.timestamps
    end
  end
end
