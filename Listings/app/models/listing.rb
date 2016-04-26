class Listing < ActiveRecord::Base
  validates :title, presence: true
  belongs_to :user
  has_many :pictures, dependent: :destroy
end
