class Area < ApplicationRecord
  has_many :comments

  def self.search(search)
    if search
      Area.where('name LIKE(?)', "%#{search}%")  
    else
      Area.all
    end
  end
end
