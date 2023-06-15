class Post < ApplicationRecord
  has_one_attached :image
  #view画像を使うviewへ記述    <%= f.file_field :image, accept: "image/*" %>

  has_many :comments, dependent: :destroy
  belongs_to :user

  def get_image(width, height)
      unless image.attached?
        file_path = Rails.root.join('app/assets/images/no_image.jpg')
        image.attach(io: File.open(file_path), filename: 'default-image.jpg', content_type: 'image/jpeg')
      end
      image.variant(resize_to_limit: [width, height]).processed
  end


# 検索方法分岐
  def self.looks(search, word)
    if search == "perfect_match"
      @post = Post.where("text_name LIKE?","#{word}")
    elsif search == "forward_match"
      @post = Post.where("text_name LIKE?","#{word}%")
    elsif search == "backward_match"
      @post = Post.where("text_name LIKE?","%#{word}")
    elsif search == "partial_match"
      @post = Post.where("text_name LIKE?","%#{word}%")
    else
      @post = Post.all
    end
  end

end
