class BucketList < ApplicationRecord
  belongs_to :user
  has_many :list_events
  has_many :list_places

  has_many :events, through: :list_events
  has_many :places, through: :list_places

end
