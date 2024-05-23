# frozen_string_literal: true

class GigPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def index?
    authority?(user)
  end

  def show?
    true
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

  def tagged?
    show?
  end

  def permitted_attributes
    [
      :position,
      :img_url,
      :description,
      :short_description,
      :time_period,
      :additional_notes,
      :biggest_challenge,
      :tag_list,
      :client_id
    ]
  end
end
