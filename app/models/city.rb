class City < ApplicationRecord
  belongs_to :state
  has_many :news
end
