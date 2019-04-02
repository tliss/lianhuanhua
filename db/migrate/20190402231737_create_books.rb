class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.integer :series_number
      t.integer :year_published

      t.timestamps
    end
  end
end
