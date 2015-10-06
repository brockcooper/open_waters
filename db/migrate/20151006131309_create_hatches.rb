class CreateHatches < ActiveRecord::Migration
  def change
    create_table :hatches do |t|
      t.references :user, index: true, foreign_key: true
      t.references :fishing_report, index: true, foreign_key: true
      t.string :insect_type
      t.string :time_of_day
      t.text :description

      t.timestamps null: false
    end
  end
end
