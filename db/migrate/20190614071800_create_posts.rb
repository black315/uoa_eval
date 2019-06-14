class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :content
      t.text :instructor
      t.string :rate
      t.integer :period
      t.references :subject, foreign_key: true

      t.timestamps
    end
  end
end
