class Genre < ApplicationRecord
has_many :posts, dependent: :destroy
  
  def name
    category_name
  end
  
  validates :genre_name, presence: true, uniqueness: true
end
