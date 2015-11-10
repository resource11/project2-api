class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :given_name, null: false
      t.string :surname, null: false
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
