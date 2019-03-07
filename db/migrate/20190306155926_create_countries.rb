class CreateCountries < ActiveRecord::Migration[5.2]
  def change
    create_table :countries do |t|
      t.string :name
      t.string :prefixe
      t.references :continent, foreign_key: true, index: true

      t.timestamps null: false
    end
  end
end
