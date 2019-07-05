class CreateNotes < ActiveRecord::Migration[5.2]
  def change
    create_table :notes do |t|
      t.string :title, limit: 64, null: false, comment: "标题"
      t.string :cover, limit: 256, comment: "封面"
      t.text :content, comment: "内容"

      t.timestamps null: false
    end
  end
end
