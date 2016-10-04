class City < ActiveRecord::Base
  belongs_to :state
  has_many :locations
  has_many :institutions
end
