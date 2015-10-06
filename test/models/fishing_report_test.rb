require 'test_helper'

class FishingReportTest < ActiveSupport::TestCase
  def setup
    @user = User.new(:email => 'test@example.com', :password => 'password', :password_confirmation => 'password')
    @user.save
    @report = @user.fishing_reports.build(date: "2015-10-06", title:"Provo ")
  end

  test "should be valid" do
    assert @report.valid?
  end

  test "user id should be present" do
    @report.user_id = nil
    assert_not @report.valid?
  end
end
