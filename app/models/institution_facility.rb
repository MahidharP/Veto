class InstitutionFacility < ActiveRecord::Base
  belongs_to :institution
  belongs_to :facility
end
