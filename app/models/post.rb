class Post < ApplicationRecord
  has_one_attached :image
  #view画像を使うviewへ記述    <%= f.file_field :image, accept: "image/*" %>
  
  has_many :comments, dependent: :destroy

end
