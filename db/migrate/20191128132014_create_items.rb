class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :product_name
      t.text :content
      t.date :release_date
      t.integer :price

      t.timestamps
    end
  end
end
