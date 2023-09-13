# frozen_string_literal: true

class AppPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def index?
    authority?(user)
  end

  def show?
    index?
  end

  def new?
    index?
  end

  def create?
    index?
  end

  def edit?
    index?
  end

  def update?
    index?
  end

  def destroy?
    index?
  end

  def permitted_attributes
    [:name, :img_url, :description, :short_description, :time_period, :additional_notes, :biggest_challenge]
  end
end
