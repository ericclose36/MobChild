class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.string :author
      t.text :description
      t.integer :year
      t.string :publisher

      t.timestamps null: false
    end
  end
end
