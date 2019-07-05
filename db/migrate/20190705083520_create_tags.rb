class CreateTags < ActiveRecord::Migration[5.2]
  def change
    create_table :tags do |t|
      t.string :name, limit: 64, null: false, comment: "名称"
      t.integer :sort, null: false, default: 0, comment: "排序"

      t.timestamps null: false
    end
  end
end
