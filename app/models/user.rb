class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable,
         :validatable, :confirmable
  has_many :fishing_reports, dependent: :destroy
  has_many :flies, dependent: :destroy
  has_many :fish, dependent: :destroy
  has_many :hatches, dependent: :destroy

end
