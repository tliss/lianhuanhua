class AddBookIdToPages < ActiveRecord::Migration[5.2]
  def change
    add_column :pages, :book_id, :integer
  end
end
