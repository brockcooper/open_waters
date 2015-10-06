class CreateFishingReports < ActiveRecord::Migration
  def change
    create_table :fishing_reports do |t|
      t.references :user, index: true, foreign_key: true
      t.string :location
      t.string :body_of_water
      t.date :date
      t.string :rod_used
      t.string :line_used
      t.string :leader_used
      t.string :tippet_used
      t.string :water_flow
      t.string :visibility
      t.string :best_water_type
      t.string :weather
      t.string :best_time_of_day
      t.string :gps
      t.text :story
      t.text :advice
      t.text :other_notes
      t.string :title
      t.float :water_temp
      t.float :air_temp

      t.timestamps null: false
    end
  end
end
