class Institution < ActiveRecord::Base
  belongs_to :state
  belongs_to :city
  belongs_to :location
  has_many :highlights
  has_many :results
  has_many :events
  has_many :contacts
  has_many :facilities
  has_many :acheivements
  has_many :extra_curricular_activities
  has_many :institution_facilities
  has_many :facilities, through: :institution_facilities

  accepts_nested_attributes_for :contacts,
  reject_if: proc { |attributes| attributes['phone_number'].blank? },
  allow_destroy: true

  accepts_nested_attributes_for :highlights,
  reject_if: proc { |attributes| attributes['name'].blank? },
  allow_destroy: true

  accepts_nested_attributes_for :acheivements,
  reject_if: proc { |attributes| attributes['name',].blank? },
  reject_if: proc { |attributes| attributes['details'].blank? },
  allow_destroy: true

  accepts_nested_attributes_for :events,
  reject_if: proc { |attributes| attributes['event_date'].blank? },
  reject_if: proc { |attributes| attributes['name'].blank? },
  reject_if: proc { |attributes| attributes['details'].blank? },
  allow_destroy: true

  accepts_nested_attributes_for :results,
  reject_if: proc { |attributes| attributes['students'].blank? },
  reject_if: proc { |attributes| attributes['scored'].blank? },
  allow_destroy: true


end
