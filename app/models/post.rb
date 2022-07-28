class Post < ApplicationRecord
  has_one_attached :ramen_image
  belongs_to :user
  
  validates :visited_date, presence: true
  validates :shop_name, presence: true, length: {maximum:50}
  validates :shop_memo, presence: true, length: {maximum:300}
  validates :shop_score, presence: true, numericality: {only_integer: true}
  validates :address, presence: true
end
