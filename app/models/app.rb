# frozen_string_literal: true

class App < ApplicationRecord
  acts_as_taggable_on :tags

  belongs_to :client, inverse_of: :apps

  delegate :name, to: :client, prefix: true
  delegate :time_period, to: :client, prefix: true
end
