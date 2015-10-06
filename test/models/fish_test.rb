require 'test_helper'

class FishTest < ActiveSupport::TestCase
  def setup
    @user = User.new(:email => 'test@example.com', :password => 'password', :password_confirmation => 'password')
    @user.save
    @report = @user.fishing_reports.build(date: "2015-10-06", title:"Provo ")
    @fish = @report.fish.build(species: "Rainbow Trout", length: 22, story:"Caught a huge fish on the middle provo river.")
  end

  test "should be valid" do
    assert @fish.valid?
  end
end
