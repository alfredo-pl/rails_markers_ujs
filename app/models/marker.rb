class Marker < ApplicationRecord
  belongs_to :category

  def name_category
    Category.references(:marker).where(id: category_id).pluck :name
  end
end
