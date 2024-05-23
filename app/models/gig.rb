class Gig < ApplicationRecord
  acts_as_taggable_on :tags
  
  belongs_to :client
end
