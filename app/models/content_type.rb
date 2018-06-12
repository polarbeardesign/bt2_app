class ContentType < ApplicationRecord

  scope :pages, -> {
    where('type_name = "Pages"')
    }
    
  scope :blogs, -> {
    where('type_name = "Blogs"')
    }

end
