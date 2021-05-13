class Category < ApplicationRecord
  belongs_to :category
  belongs_to :type
  has_many :markers
end
