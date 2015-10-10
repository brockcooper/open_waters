class Fly < ActiveRecord::Base
  belongs_to :user
  belongs_to :fishing_report
  has_many :fish
end
