class State < ActiveRecord::Base
  has_many :institutions
  has_many :cities
end
