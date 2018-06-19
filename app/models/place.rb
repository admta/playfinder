class Place < ApplicationRecord
  has_many :events
  has_many :list_places
  include PgSearch

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?


  pg_search_scope :full_search,
  against: [ :title, :category, :address],
  using: {
      tsearch: { prefix: true }
    }
  multisearchable against: [ :title, :category, :address]
end
