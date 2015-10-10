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

#u.fishing_reports.new(date: '2015-10-6', title: 'Middle Provo', location: 'Middle Provo', body_of_water: 'River', rod_used: 'Scott A4', line_used: 'Rio Gold 6wt', leader_used: '5x', tippet_used: '8ft', water_flow: 'fast', visibility: 'clear', best_water_type: 'ripple', weather: 'Sunny', best_time_of_day: 'Afternoon', gps: '40.7500 N, 111.8833 W', story: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc porta risus in porttitor varius. Aenean ut orci enim. Fusce volutpat sapien a semper commodo. Sed turpis mi, lacinia non arcu eu, rhoncus tempor lacus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis feugiat fermentum eleifend. Curabitur sem quam, luctus sed nibh id, rutrum posuere nisl. Praesent a dui ante.

#Integer mollis ornare erat. Aliquam fermentum, turpis ac accumsan laoreet, neque risus aliquam eros, sed vestibulum erat risus sit amet risus. Nullam quis condimentum sem. Integer eget tortor pretium, tristique leo eu, tincidunt diam. Sed ac leo tempor, sollicitudin nunc sed, rhoncus velit. Vestibulum leo lacus, posuere sed ante sed, pulvinar porttitor justo. Suspendisse sit amet aliquet urna, non mattis est. Ut ipsum nulla, tincidunt a velit eu, ornare rutrum erat.', advice: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce commodo felis feugiat bibendum vulputate. Suspendisse potenti. Ut sed enim maximus, bibendum erat id, maximus urna. Phasellus lacinia laoreet justo non vestibulum. Ut consectetur nulla sed sem eleifend, eu hendrerit diam lobortis. Nullam odio leo, feugiat eget dignissim et, dignissim sit amet est. Nullam laoreet ac lacus placerat congue. Donec eu quam ipsum. Suspendisse sodales tempor venenatis. Ut sit amet tristique quam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.

#Aliquam aliquam vel metus vitae finibus. Ut ac dapibus mauris, id pulvinar felis. Integer sed neque vel nisi ultricies suscipit non nec sapien. Cras blandit nisi eu neque aliquet vulputate. Nulla quis nisl ut metus accumsan semper eu mollis risus. Quisque ut pretium turpis. Sed at mi viverra, eleifend magna dapibus, consequat eros. Donec euismod sodales rutrum. Nam augue quam, sollicitudin ac vehicula quis, cursus sed ipsum. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nullam lectus velit, mattis quis mi sit amet, dapibus sagittis quam. Morbi egestas sit amet ipsum nec venenatis.

#Etiam sit amet elementum nulla. Suspendisse odio metus, tristique consectetur eros eget, euismod suscipit nulla. Nunc non ipsum nisl. Ut sollicitudin augue laoreet ante mollis, quis cursus metus scelerisque. Sed et libero consequat, eleifend ligula non, malesuada libero. Aliquam erat volutpat. Aenean sit amet diam finibus, ornare est sed, hendrerit mauris. Etiam dictum lorem justo, non tempor orci dictum a.', other_notes: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc feugiat mauris ac justo auctor gravida. Curabitur vehicula massa sed sapien hendrerit, eu aliquet mi rutrum. Quisque vel sem ac justo luctus malesuada eget non neque. Duis finibus quis enim vel sodales. Pellentesque auctor rutrum nisl, sed tristique lorem malesuada ac. Nunc fermentum nunc sit amet neque iaculis imperdiet. Vivamus venenatis mattis quam, id egestas lectus viverra id. Vestibulum leo turpis, pretium id hendrerit nec, cursus pretium eros. Nam vitae congue massa.', water_temp: 45.6, air_temp: 75.6)

#u.fishing_reports.new(date: '2015-10-7', title: 'Lower Provo', location: 'Lower Provo', body_of_water: 'River', rod_used: 'Scott A4', line_used: 'Rio Gold 6wt', leader_used: '5x', tippet_used: '8ft', water_flow: 'fast', visibility: 'clear', best_water_type: 'ripple', weather: 'Sunny', best_time_of_day: 'Afternoon', gps: '40.7500 N, 111.8833 W', story: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc porta risus in porttitor varius. Aenean ut orci enim. Fusce volutpat sapien a semper commodo. Sed turpis mi, lacinia non arcu eu, rhoncus tempor lacus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis feugiat fermentum eleifend. Curabitur sem quam, luctus sed nibh id, rutrum posuere nisl. Praesent a dui ante.

#Integer mollis ornare erat. Aliquam fermentum, turpis ac accumsan laoreet, neque risus aliquam eros, sed vestibulum erat risus sit amet risus. Nullam quis condimentum sem. Integer eget tortor pretium, tristique leo eu, tincidunt diam. Sed ac leo tempor, sollicitudin nunc sed, rhoncus velit. Vestibulum leo lacus, posuere sed ante sed, pulvinar porttitor justo. Suspendisse sit amet aliquet urna, non mattis est. Ut ipsum nulla, tincidunt a velit eu, ornare rutrum erat.', advice: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce commodo felis feugiat bibendum vulputate. Suspendisse potenti. Ut sed enim maximus, bibendum erat id, maximus urna. Phasellus lacinia laoreet justo non vestibulum. Ut consectetur nulla sed sem eleifend, eu hendrerit diam lobortis. Nullam odio leo, feugiat eget dignissim et, dignissim sit amet est. Nullam laoreet ac lacus placerat congue. Donec eu quam ipsum. Suspendisse sodales tempor venenatis. Ut sit amet tristique quam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.

#Aliquam aliquam vel metus vitae finibus. Ut ac dapibus mauris, id pulvinar felis. Integer sed neque vel nisi ultricies suscipit non nec sapien. Cras blandit nisi eu neque aliquet vulputate. Nulla quis nisl ut metus accumsan semper eu mollis risus. Quisque ut pretium turpis. Sed at mi viverra, eleifend magna dapibus, consequat eros. Donec euismod sodales rutrum. Nam augue quam, sollicitudin ac vehicula quis, cursus sed ipsum. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nullam lectus velit, mattis quis mi sit amet, dapibus sagittis quam. Morbi egestas sit amet ipsum nec venenatis.

#Etiam sit amet elementum nulla. Suspendisse odio metus, tristique consectetur eros eget, euismod suscipit nulla. Nunc non ipsum nisl. Ut sollicitudin augue laoreet ante mollis, quis cursus metus scelerisque. Sed et libero consequat, eleifend ligula non, malesuada libero. Aliquam erat volutpat. Aenean sit amet diam finibus, ornare est sed, hendrerit mauris. Etiam dictum lorem justo, non tempor orci dictum a.', other_notes: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc feugiat mauris ac justo auctor gravida. Curabitur vehicula massa sed sapien hendrerit, eu aliquet mi rutrum. Quisque vel sem ac justo luctus malesuada eget non neque. Duis finibus quis enim vel sodales. Pellentesque auctor rutrum nisl, sed tristique lorem malesuada ac. Nunc fermentum nunc sit amet neque iaculis imperdiet. Vivamus venenatis mattis quam, id egestas lectus viverra id. Vestibulum leo turpis, pretium id hendrerit nec, cursus pretium eros. Nam vitae congue massa.', water_temp: 45.6, air_temp: 75.6)
