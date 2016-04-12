class Listing < ActiveRecord::Base
  validates :title, presence: true
  has_many :pictures, dependent: :destroy
end
