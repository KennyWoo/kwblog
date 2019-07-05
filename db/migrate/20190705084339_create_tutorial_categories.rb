class CreateTutorialCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :tutorial_categories do |t|
      t.string :name, limit: 64, null: false, comment: "名称"
      t.text :description, comment: "描述"

      t.timestamps null: false
    end
  end
end
