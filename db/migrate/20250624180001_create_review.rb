class CreateReview < ActiveRecord::Migration[8.0]
  def change
    create_table :reviews do |t|
      t.text :contenido
      t.integer :rating
      t.references :book, null: false, foreign_key: true

      t.timestamps
    end
  end
end
