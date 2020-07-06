class User < ApplicationRecord
    has_many :posts 
    has_many :donations 
    has_many :pets
end
