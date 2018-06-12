class Content < ApplicationRecord

  belongs_to :content_type
 
#  scope :reverse, -> {
#    order("contents.published_at DESC")
#    }
 
end
