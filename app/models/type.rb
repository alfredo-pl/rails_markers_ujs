class Type < ApplicationRecord
    has_many :categories, through: :categories
end
