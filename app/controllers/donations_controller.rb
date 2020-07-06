class DonationsController < ApplicationController


    def show 
        @donation = Donation.find(params[:id])
    end 

    def new 
        @donation = Donation.new
        @users = User.all
        @pets = Pet.all
    end 

    def create 
        @donation = Donation.create(donation_param)
        redirect_to donation_path(@donation)
    end 

    private 

    def donation_param
        params.require(:donation).permit(:user_id, :pet_id, :donation_amount, :date)
    end 

end
