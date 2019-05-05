class Page < ApplicationRecord
  has_one_attached :picture
  belongs_to :book

  def thumbnail
    self.picture.variant(resize: '100x100')
  end
end
