class Review < ApplicationRecord
  # Pertenece a un book
  belongs_to :book

  # Validamos que contenido esté presente
  validates :contenido, presence: true

  # Validación para el rating
  validates :rating, presence: true, inclusion: {in:1..5}

  after_create :update_book_rating
  
  private
  def update_book_rating
    book.update(average_rating: book.reviews.average(:rating))
  end

end