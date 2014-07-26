class Charge < ActiveRecord::Base

Stripe.api_key = "sk_test_wL6KIw6smuEvpipr2umoKu9f"

attr_accessor :stripe_card_token

# Create the charge on Stripe's servers - this will charge the user's card


def charging_card(charge)
	begin
	  charge = Stripe::Charge.create(
	    :amount => (charge.amount.to_i)*100, # amount in cents, again
	    :currency => "usd",
	    :card => stripe_card_token,
	    :description => "payinguser@example.com"
	  )
	rescue Stripe::InvalidRequestError => e
	    logger.error "Stripe error while creating customer: #{e.message}"
	end


	end
end
