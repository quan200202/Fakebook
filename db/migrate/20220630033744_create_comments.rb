class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.integer :user_id
      t.string :body
      t.integer :commentable_id
      t.string :commentable_type
      t.timestamps
    end
  end
end
