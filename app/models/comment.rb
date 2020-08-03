class Comment < ApplicationRecord
 
  belongs_to :area 
  belongs_to :user
end
