class Event < ApplicationRecord


	scope :date_ordered, -> {
	  order("events.start_time ASC")
	  }


end
