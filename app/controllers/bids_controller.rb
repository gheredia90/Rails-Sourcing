class BidsController < ApplicationController

  def new
  	@user = User.find(params[:user_id])
  	@product = @user.products.find(params[:product_id])
  	@bid = @product.bids.new
  end  

  def create
  	@user = User.find(params[:user_id])
  	@product = @user.products.find(params[:product_id])
  	@bid = @product.bids.new bid_params

  	if @bid.save
  		flash[:notice] = "Bid successfully created"
  		redirect_to action: 'index', controller: 'products', 
  		product_id: @product.id
  	else
  		render 'new'
  	end		
  end

  private
  def bid_params
  	params.require(:bid).permit(:amount)
  end

end
