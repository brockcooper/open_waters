class Fish < ActiveRecord::Base
  belongs_to :user
  belongs_to :fishing_report
  belongs_to :fly
end
