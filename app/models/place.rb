class Place < ApplicationRecord
  has_many :events
  has_many :list_places
  include PgSearch
  scope :category, -> (category) { where("category ILIKE ?", "%#{category}%") }
  scope :title, -> (title) { where("title like ?", "%#{title}%")}
  scope :age_0_2, -> { where("min_age = 0 AND max_age < 11" ) }
  scope :age_3_5, -> { where("min_age = 3 AND max_age < 16" ) }
  scope :age_9_15, -> { where("min_age = 9 AND max_age < 16" ) }
  scope :age_0_5, -> { where("min_age >= 0 AND max_age < 6" ) }


  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  pg_search_scope :full_search,
  against: [ :title, :category, :address],
  using: {
      tsearch: { prefix: true }
    }
  multisearchable against: [ :title, :category, :address]
end
