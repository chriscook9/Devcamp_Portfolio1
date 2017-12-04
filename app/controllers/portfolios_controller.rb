class PortfoliosController < ApplicationController
	def index
		@portfolio_items = Portfolio.all
	end

	def new
		@portfolio_item = Portfolio.new
	end

	def create
		@portfolio_item = portfolio.new(params.require(:portfolio).permit(:title, :subtitle, :body))

		respond_to do |format|
			if @portfolio_item.save
				format.html { redirect_to portfolios_path, notice: 'Your portfolio item is now live.' }
			else
				format.html { render :new }
			end
		end
	end


	def edit
		@portfolio_item = Portfolio.find(params[:id])
	
  def update
		@portfolio_item = Portfolio.find(params[:id])
		respond_to do |format|
			if @portfolio_item.update(params.require(:portfolios).permit(:title, :subtitle, :body))
				format.html { redirect_to @portfolios_path, notice: 'The record successfully updated.' }

			else
				format.html { render :edit }
			end
		end
	end
end 

def show
	@portfolio_item = Portfolio.find(params[:id])
end
def detroy 
	# Perform the lookup
	@portfolio_item.destroy

	# Destroy/delete the record
	@portfolio_item.destroy

	# Redirect
	rspond_to dp |foramt|
		format.html { redirect_to blogs_url, notce 'Post was removed'}



end




