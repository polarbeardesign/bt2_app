class CreateContentTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :content_types do |t|
      t.string :type_name
      t.text :description

      t.timestamps
    end
  end
end
