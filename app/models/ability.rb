class Ability < ActiveRecord::Base
  include CanCan::Ability

  def initialize(user)
    if user.role == "user"
      can [:read], [Institution, City, Location, State]
    end
end
