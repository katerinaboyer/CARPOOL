class Ability
  include CanCan::Ability

  def initialize(user)
    can :read, public: true
  end

  def initialize(driver)
    can :update, RiderApplication.notes
  end

  def initialize(admin)
    can :read, RiderApplication
  end
end
