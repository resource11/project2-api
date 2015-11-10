class CreateFavorites < ActiveRecord::Migration
  def change
    create_table :favorites do |t|
      t.boolean :favorited, default: false
      t.references :user, index: true, foreign_key: true
      t.references :bike, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
