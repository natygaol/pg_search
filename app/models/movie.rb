class Movie < ApplicationRecord
  belongs_to :director

  include PgSearch::Model
  # :search_by_title_and_synopsis is the method that you'll call when you do the search
    pg_search_scope :search_by_title_and_synopsis,
      against: [ :title, :synopsis ],  # those are the columns you're gonna use to search
      using: {
        # @@        partial words allowed with prefix true
        tsearch: { prefix: true } # <-- now `superman batm` will return something!
      }

end
