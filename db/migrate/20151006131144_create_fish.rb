class CreateFish < ActiveRecord::Migration
  def change
    create_table :fish do |t|
      t.references :user, index: true, foreign_key: true
      t.references :fishing_report, index: true, foreign_key: true
      t.string :species
      t.string :gps
      t.float :length
      t.float :weight
      t.text :story
      t.references :fly, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
