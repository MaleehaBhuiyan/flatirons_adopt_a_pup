class Post < ApplicationRecord
    belongs_to :user 


    validates :user_id, :post_title, :description, :post_img_url, presence: true
    validates :post_title, length: {minimum: 2 } 
    validates :description, length: {maximum: 240 }
end
