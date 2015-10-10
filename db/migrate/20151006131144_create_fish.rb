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

#fish1 = fr.fish.new(user: u, species: 'rainbow trout', gps: '40.5067 N, 111.4122 W', length: 22.3, weight: 6, story: 'Bacon ipsum dolor amet eiusmod boudin rump mollit, ut adipisicing do lorem prosciutto sirloin t-bone aute commodo. Ea voluptate ex non reprehenderit. Incididunt ribeye pork belly brisket filet mignon adipisicing, turducken flank chicken mollit et ham corned beef quis. Sausage swine shank short ribs nisi ipsum, in hamburger duis non. Nostrud occaecat sausage, bacon laboris pastrami swine incididunt cupim picanha est cillum. Alcatra ham hock aliquip ea, dolore ut leberkas dolore. Mollit ball tip exercitation t-bone pancetta landjaeger qui hamburger laboris.', fly: fly1)
#fish2 = fr.fish.new(user: u, species: 'brown trout', gps: '40.5067 N, 111.4122 W', length: 12.3, weight: 2, story: 'Bacon ipsum dolor amet meatloaf chicken elit ham hock labore tri-tip, spare ribs excepteur enim in laboris kielbasa pig sed. Alcatra proident tempor, laboris tail cow rump andouille shoulder kevin. Pork loin ham hock sunt pork chop hamburger. Beef ribs fatback tenderloin elit frankfurter. Bacon adipisicing reprehenderit kevin, officia eiusmod ad pastrami.

#Filet mignon drumstick pork porchetta eiusmod ex laboris shankle beef pig sirloin biltong. Nisi esse venison landjaeger ipsum ullamco corned beef shank tail meatball aliqua spare ribs fugiat. Pork chop sausage aliqua, nostrud mollit ut in sint tongue incididunt. Ham et fatback prosciutto, tenderloin bacon doner aliquip enim sirloin chicken. Brisket leberkas bresaola tri-tip. Bresaola spare ribs eu pig nisi.', fly: fly1)