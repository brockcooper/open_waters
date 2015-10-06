class FishingReport < ActiveRecord::Base
  belongs_to :user
  has_many :flies
  has_many :fish
  has_many :hatches
  validates :user_id, presence: true
  validates :date, presence: true
  validates :title, presence: true
end
