class CreatePages < ActiveRecord::Migration[5.2]
  def change
    create_table :pages do |t|
      t.text :english
      t.text :chinese
      t.text :pinyin
      t.integer :page_number

      t.timestamps
    end
  end
end
