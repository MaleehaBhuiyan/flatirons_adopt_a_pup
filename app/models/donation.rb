class Donation < ApplicationRecord
    belongs_to :user
    belongs_to :pet

    validates :donation_amount, :numericality => { :greater_than_or_equal_to => 1 }
    
end
