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
        if @donation.valid?
            redirect_to donation_path(@donation.id)
        else
            flash[:my_errors] = @donation.errors.full_messages
            redirect_to new_donation_path
        end 
    end 

    private 

    def donation_param
        params.require(:donation).permit(:user_id, :pet_id, :donation_amount, :date)
    end 

end
