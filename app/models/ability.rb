class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)
    if @gym.routesetters.where(user_id: current_user.id).exists?
        can :manage, :all
    else
        can :read, :all
    end
  end
end
