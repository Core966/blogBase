class CreateBlogs < ActiveRecord::Migration

  def change
      
    create_table :blogs do |t|
      t.string :title
      t.text :body
      t.boolean :draft
      t.datetime :published_at
      t.integer :user_id
      t.integer :visitors

      t.timestamps
    end
  end
end
