class BucketList < ApplicationRecord
  belongs_to :user
  has_many :list_events
  has_many :list_places
end
