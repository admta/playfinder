class Place < ApplicationRecord
  has_many :events
  has_many :list_places
end
