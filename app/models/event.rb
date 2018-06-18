class Event < ApplicationRecord
  belongs_to :place
  has_many :list_events
end
