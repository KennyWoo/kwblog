class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.string :title, limit: 64, null: false, comment: "标题"
      t.text :content, comment: "内容"
      t.references :article_category, foreign_key: true

      t.timestamps null: false
    end
  end
end
