class CreateBikes < ActiveRecord::Migration
  def change
    create_table :bikes do |t|
      t.string :name
      t.text :description
      t.references :user, index: true, foreign_key: true
    end
  end
end
