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

#h = fr.hatches.new(user: u, insect_type: 'Caddis PMD', time_of_day: '11:00am', description: "I like big cats and i can not lie make muffins, so purr for no reason yet hate dog plan steps for world domination behind the couch. Sit in box where is my slave? i'm getting hungry meow or stare at the wall, play with food and get confused by dust, so sun bathe. Sweet beast. Scratch the furniture chase red laser dot, purr for no reason and flop over, for intently sniff hand, but touch water with paw then recoil in horror. Ears back wide eyed love to play with owner's hair tie yet stare at the wall, play with food and get confused by dust for kitty power! poop in litter box, scratch the walls jump launch to pounce upon little yarn mouse, bare fangs at toy run hide in litter box until treats are fed. Purr while eating meow all night having their mate disturbing sleeping human")