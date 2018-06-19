class Place < ApplicationRecord
  has_many :events
  has_many :list_places
  include PgSearch

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
 

  pg_search_scope :full_search,
  against: [ :title, :category, :address, :start_date, :default_age],
  using: {
      tsearch: { prefix: true } 
    }
end