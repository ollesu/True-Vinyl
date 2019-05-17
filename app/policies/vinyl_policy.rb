class VinylPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    return true
  end

  def show?
    true
  end

  # def edit?
  #   record.user == user
  # end

  def update?
    is_user_owner_or_admin?
  end

  def destroy?
    is_user_owner_or_admin?
  end

  private

  def is_user_owner_or_admin?
    record.user == user || user&.admin
  end

end
