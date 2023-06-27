class Genre < ApplicationRecord
has_many :posts, dependent: :destroy
  
  def rank_genre
    self.posts.joins(:comments).group('posts.id').order('AVG(comments.total_score) DESC').limit(3)
  end
  
  validates :genre_name, presence: true, uniqueness: true
end
