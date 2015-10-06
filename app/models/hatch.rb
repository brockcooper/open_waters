class Hatch < ActiveRecord::Base
  belongs_to :user
  belongs_to :fishing_report
end
