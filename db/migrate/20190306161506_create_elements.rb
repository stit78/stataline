class CreateElements < ActiveRecord::Migration[5.2]
  def change
    create_table :elements do |t|
      t.json :series
      t.references :country, foreign_key: true, index: true
      t.references :indicator, foreign_key: true, index: true
      t.references :unit, foreign_key: true, index: true

      t.timestamps null: false
    end
  end
end
