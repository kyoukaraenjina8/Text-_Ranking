class Post < ApplicationRecord
  has_one_attached :image
  #view画像を使うviewへ記述    <%= f.file_field :image, accept: "image/*" %>

  has_many :comments, dependent: :destroy
  belongs_to :user

def get_image
    unless image.attached?
      file_path = Rails.root.join('app/assets/images/no_image.jpg')
      image.attach(io: File.open(file_path), filename: 'default-image.jpg', content_type: 'image/jpeg')
    end
    image
end
end
