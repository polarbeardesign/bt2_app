class Event < ApplicationRecord


	scope :date_ordered, -> {
	  order("events.start_time ASC")
	  }

  scope :lodging, -> {
    where("event_type = 'Lodging'")
    }
  
  scope :transp, -> {
    where("event_type = 'Flight' or event_type = 'Ground Transportation'")
    }

end
