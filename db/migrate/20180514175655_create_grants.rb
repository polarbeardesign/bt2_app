class CreateGrants < ActiveRecord::Migration[5.2]
  def change
    create_table :grants do |t|
      t.references :right, foreign_key: true
      t.references :role, foreign_key: true

      t.timestamps
    end
  end
end
