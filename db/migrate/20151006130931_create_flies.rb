class CreateFlies < ActiveRecord::Migration
  def change
    create_table :flies do |t|
      t.references :user, index: true, foreign_key: true
      t.references :fishing_report, index: true, foreign_key: true
      t.string :name
      t.string :fly_type
      t.string :setup
      t.string :size
      t.boolean :tied_yourself
      t.text :notes

      t.timestamps null: false
    end
  end
end
