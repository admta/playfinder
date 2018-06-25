class Event < ApplicationRecord
  belongs_to :place
  has_many :list_events
  include PgSearch
  # scope: :start_date, -> (start_date) { where start_date: start_date }
  # scope: :description, -> (description) { where description: description }
  # scope: :title, -> (date) { where("title like ?", "#{title}%")}
  # scope :start_date, -> (start_date) {where(start_date: start_date)}
  scope :age_0_2, -> { where("min_age = 0 AND max_age < 3" ) }
  scope :age_3_8, -> { where("min_age = 3 AND max_age < 9" ) }
  scope :age_9_15, -> { where("min_age = 9 AND max_age < 16" ) }
  scope :datepick, -> { where("start_date >= #{datepick} AND end_date <= #{datepick}") }


  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  pg_search_scope :full_search,
    against: [ :title, :description, :start_date],
    using: {
        tsearch: { prefix: true }
      }

  # multisearchable against: [ :title, :description, :start_date]
end


