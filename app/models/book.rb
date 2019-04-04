class Book < ApplicationRecord
  # has_many :pages, dependent: destroy
  validates :year_published, numericality: { only_integer: true }
  belongs_to :series
end
