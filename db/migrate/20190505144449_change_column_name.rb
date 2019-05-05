class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :books, :series_number, :book_number
  end
end
