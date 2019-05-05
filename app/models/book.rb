class Book < ApplicationRecord
  validates :book_number, numericality: { only_integer: true }, presence: true
  validates :year_published, numericality: { only_integer: true }, presence: true
  belongs_to :series
  has_many :pages, dependent: :destroy
end
