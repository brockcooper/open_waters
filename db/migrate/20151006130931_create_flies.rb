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

#fly1 = fr.flies.new(name: 'Wooly bugger', fly_type: 'streamer', setup: 'with a dropper', size: '32', tied_yourself: true, notes: 'I tied this one myself. This was my first wooly bugger streamer.', user: u)
#fly2 = fr.flies.new(name: 'Caddis Elk Hair', fly_type: 'dry', setup: 'with a dropper', size: '18', tied_yourself: false, user: u)