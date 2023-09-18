# frozen_string_literal: true

class Client < ApplicationRecord
  has_many :apps, inverse_of: :client, dependent: :destroy
end
