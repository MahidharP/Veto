class Form < ActiveRecord::Base
  belongs_to :user
  has_many :qualifications


end
