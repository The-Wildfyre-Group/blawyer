class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.belongs_to :topic
      t.text :content
      t.belongs_to :user
      t.timestamps
    end
  end
end
