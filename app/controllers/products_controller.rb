class ProductsController < ApplicationController


	def index
		@products = Product.all
	end	

	def show
		@product = Product.find(params[:id])    	
	end	

	def new
		@product = Product.new		
	end  

	def create
		@product = Product.new product_params		

		if @product.save
			flash[:notice] = "Product successfully created"
			redirect_to action: 'index', controller: 'products'			
		else
			render 'new'
		end		
	end

	private
	def product_params
		params.require(:product).permit(:title, :description, :deadline)
	end


end
