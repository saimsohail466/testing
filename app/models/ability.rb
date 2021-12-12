# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    # user ||= User.new


    if user.present?
      can [:index], :teams, user: user
    end
  end
end
