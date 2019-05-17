class UserPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    true
  end

  def update?
    is_user_owner_or_admin?
  end

  private

  def is_user_owner_or_admin?
    # I deleted record.user here
    user == user || user&.admin
  end
end
