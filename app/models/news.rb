class News < ApplicationRecord
  belongs_to :category
  belongs_to :city
    has_one_attached :image
  end
  

