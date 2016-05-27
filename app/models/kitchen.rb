class Kitchen < ActiveRecord::Base
  validates :name,  presence: true
end
