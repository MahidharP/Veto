class Profile < ActiveRecord::Base
  belongs_to :user
  has_many :qualifications

  accepts_nested_attributes_for :qualifications,
  reject_if: proc { |attributes| attributes['name'].blank? },
  allow_destroy: true
end
