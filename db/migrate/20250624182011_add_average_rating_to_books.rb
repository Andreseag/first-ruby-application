class AddAverageRatingToBooks < ActiveRecord::Migration[8.0]
  def change
    add_column :books, :average_rating, :decimal, default: 0.0
  end
end
