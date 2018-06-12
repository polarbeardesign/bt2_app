class AddContentTypeToContent < ActiveRecord::Migration[5.2]
  def change
    add_reference :contents, :content_type, foreign_key: true

  end
end
