class Content < ApplicationRecord

  belongs_to :content_type
 
  scope :blog, -> {
    where("contents.content_type_id = 2")
    }

  scope :ordered, -> {
    order("contents.publish_date ASC")
    }
 
end
