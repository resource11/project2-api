class CreateBikes < ActiveRecord::Migration
  def change
    create_table :bikes do |t|
      t.string :title, null: false
      t.text :description
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
