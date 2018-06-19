class Event < ApplicationRecord
  belongs_to :place
  has_many :list_events
  include PgSearch





  pg_search_scope :full_search,
    against: [ :title, :description, :start_date],
    using: {
        tsearch: { prefix: true }
      }

  multisearchable against: [ :title, :description, :start_date]
end

  # t.string "title"
  #   t.text "description"
  #   t.time "start_time"
  #   t.time "end_time"
  #   t.date "start_date"
  #   t.bigint "place_id"

