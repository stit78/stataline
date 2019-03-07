class CreateYears < ActiveRecord::Migration[5.2]
  def change
    create_table :years do |t|
      t.integer :date

      t.timestamps null: false
    end
  end
end
