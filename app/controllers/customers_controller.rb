class CustomersController < ApplicationController
	before_action :customers, only: [:show, :edit, :update, :destroy]
	def index
		@customers = Customer.all
	end
	def new
		@customer = Customer.new
	end
	def create
		@customer = Customer.new(customer_params)
			if @customer.save
			redirect_to @customer
		else
			render 'new'
			end
	end
	def show
		
	end
	def edit
		
	end
	def update
		
		if @customer.update(customer_params)
			redirect_to @customer
		else
			render 'edit'
		end		
	end
	def destroy
		
		@customer.destroy
		redirect_to customers_path

	end
	private 
	def customer_params
		params.require(:customer).permit(:name,:email,:city_id,:country,:phone_number)
	end
	def customers
		@customer = Customer.find(params[:id])
	end

end
