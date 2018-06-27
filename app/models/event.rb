class Event < ApplicationRecord
  belongs_to :place
  has_many :list_events
  include PgSearch
  # scope: :description, -> (description) { where description: description }
  # scope: :title, -> (date) { where("title like ?", "#{title}%")}
  scope :age_0_2, -> { where("min_age = 0 AND max_age < 3" ) }
  scope :age_3_5, -> { where("min_age = 3 AND max_age < 6" ) }
  scope :all_ages, -> { where("min_age = 0 AND max_age < 150" ) }
  scope :playground, -> { where("min_age = 0 AND max_age < 150" ) }
  scope :events, -> { where("min_age = 0 AND max_age < 150" ) }
  scope :datepick, -> (datepick) { where("start_date <= '#{datepick}' AND end_date >= '#{datepick}'") }


  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  pg_search_scope :full_search,
    against: [ :title, :description, :start_date],
    using: {
        tsearch: { prefix: true }
      }

  # multisearchable against: [ :title, :description, :datepick]
end


