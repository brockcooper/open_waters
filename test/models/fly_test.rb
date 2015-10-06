require 'test_helper'

class FlyTest < ActiveSupport::TestCase
 def setup
    @user = User.new(:email => 'test@example.com', :password => 'password', :password_confirmation => 'password')
    @user.save
    @report = @user.fishing_reports.build(date: "2015-10-06", title:"Provo")
   @fly = @report.flies.build(name: "wooly bugger", fly_type: "streamer")
  end

  test "should be valid" do
    assert @fly.valid?
  end
end
