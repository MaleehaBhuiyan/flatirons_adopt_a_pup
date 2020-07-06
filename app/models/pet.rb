class Pet < ApplicationRecord
    belongs_to :user, optional: true 
    has_many :donations 
end
