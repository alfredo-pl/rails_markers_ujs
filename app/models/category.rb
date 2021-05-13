class Category < ApplicationRecord
  belongs_to :category,optional: true
  belongs_to :type
  has_many :markers , dependent: :destroy

  def name_type
    Type.references(:category).where(id: type_id).pluck :name
  end
  def name_parent(id)
    
    if id
      Category.find_by(id: id).name
    else
      ""
    end

  end
end
