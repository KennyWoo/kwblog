class CreateTutorials < ActiveRecord::Migration[5.2]
  def change
    create_table :tutorials do |t|
      t.string :title, limit: 64, null: false, comment: "标题"
      t.text :content, comment: "内容"
      t.references :tutorial_category, foreign_key: true

      t.timestamps null: false
    end
  end
end
