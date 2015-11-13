class CreateFavoriteBikes < ActiveRecord::Migration
  def change
    create_table :favorite_bikes do |t|
      t.string :favorite, default: false
      t.references :user, index: true, foreign_key: true
      t.references :bike, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
