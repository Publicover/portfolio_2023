# frozen_string_literal: true

class App < ApplicationRecord
  acts_as_taggable_on :tags
end
