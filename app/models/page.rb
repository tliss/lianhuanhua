class Page < ApplicationRecord
  has_one_attached :picture
  belongs_to :book

  def thumbnail
    self.picture.variant(resize: '100x100')
  end

  def previous_page
    self.class.where("page_number < ?", page_number).order(page_number: 'desc').first
  end

  def next_page
    self.class.where("page_number > ?", page_number).order(page_number: 'asc').first
  end

end
