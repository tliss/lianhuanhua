class CreatePages < ActiveRecord::Migration[5.2]
  def change
    create_table :pages do |t|
      t.integer :page_number
      t.text :traditional_text
      t.text :simplified_text
      t.text :english_text
      t.string :image_source

      t.timestamps
    end
  end
end
