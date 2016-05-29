class Recipe < ActiveRecord::Base
  validates :name, presence: true 
  has_many :kitchens
  has_many :meals
end
