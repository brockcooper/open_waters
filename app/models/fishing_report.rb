class FishingReport < ActiveRecord::Base
  belongs_to :user
  has_many :flies, dependent: :destroy
  has_many :fish
  has_many :hatches, dependent: :destroy
  validates :user_id, presence: true
  validates :date, presence: true
  validates :title, presence: true

  default_scope -> { order(date: :desc) }

end
