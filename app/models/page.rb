class Page < ApplicationRecord
  has_one_attached :picture
  belongs_to :book
end
