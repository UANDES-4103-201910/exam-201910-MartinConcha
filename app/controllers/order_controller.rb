class OrderController < ApplicationController
	def update
		u = User.find(current_user.id)
		@order = nil
		for o in Order.all
			o.find_by(user_id: u.id)
			@order = o
		end
		if @order.update(user_params)
	      flash[:success] = "Successfully updated."
	      redirect_to @order
	    end

	end

	private
	def order_params
    		params.require(:order).permit(:billing, :shipping)
end
