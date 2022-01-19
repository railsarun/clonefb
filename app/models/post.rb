class Post < ApplicationRecord
  has_one_attached:image, dependent: :destroy
 belongs_to :user
 has_many :likes, dependent: :destroy
has_many :comments, dependent: :destroy
end

