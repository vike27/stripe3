class ChargesController < ApplicationController

	def new
	  @charge = Charge.new
	end

	def create
	 @charge = Charge.new(charges_params)
	 @charge.charging_card(@charge)
	    redirect_to root_path, :notice => "Contribution was recorded succesfully!"
	end



	def charges_params
    	params.require(:charge).permit(:stripe_card_token, :card_code, :card_number, :date, :amount)
	end


	

end



