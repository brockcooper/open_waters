class FishingReport < ActiveRecord::Base
  belongs_to :user
  has_many :flies, dependent: :destroy
  has_many :fish
  has_many :hatches, dependent: :destroy
  validates :user_id, presence: true
  validates :date, presence: true
  validates :title, presence: true

  default_scope -> { order(date: :desc) }

  accepts_nested_attributes_for :fish, reject_if: :all_blank
  accepts_nested_attributes_for :flies, reject_if: :all_blank  
  accepts_nested_attributes_for :hatches, reject_if: :all_blank

end
