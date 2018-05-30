class CreateImages < ActiveRecord::Migration[5.2]
  def change
    create_table :images do |t|
      t.text :caption
      t.string :keywords

      t.timestamps
    end
  end
end
