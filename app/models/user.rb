class User < ApplicationRecord
    has_many :posts 
    has_many :donations 
    has_many :pets
    has_one_attached :avatar
    # has_one_attached :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }


    validates :username, :email, uniqueness: true
    validates :password, length: {in: 8..12}
   
    validate :password_requirements_are_met

    def password_requirements_are_met
        rules = {
          " must contain at least one lowercase letter"  => /[a-z]+/,
          " must contain at least one uppercase letter"  => /[A-Z]+/,
          " must contain at least one digit"             => /\d+/,
          " must contain at least one special character" => /[^A-Za-z0-9]+/
        }
        rules.each do |message, regex|
          errors.add( :password, message ) unless password.match( regex )
        end
      end


end
