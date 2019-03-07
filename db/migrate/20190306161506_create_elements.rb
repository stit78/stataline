class CreateElements < ActiveRecord::Migration[5.2]
  def change
    create_table :elements do |t|
      t.float :value
      t.references :country, foreign_key: true, index: true
      t.references :indicator, foreign_key: true, index: true
      t.references :year, foreign_key: true, index: true
      t.references :unit, foreign_key: true, index: true

      t.timestamps null: false
    end
  end
end
