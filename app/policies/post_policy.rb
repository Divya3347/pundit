class PostPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      case user&.userrole
      when 'admin'
        scope.all
      when 'editor'
        if user&.email.present?
          scope.where('name LIKE ?', "#{user.email.split('@').first}%")
        else
          scope.none
        end
      else
        scope.all
      end
    end
  end

  attr_reader :user, :record
  def initialize(user, record)
    @user = user
    @record = record
  end

  def create?
    user.admin? || user.editor?
  end

  def update?
    user.admin?
  end

  def destroy?
    user.admin?
  end

  def show?
    user.admin? || user.editor?
  end
end
