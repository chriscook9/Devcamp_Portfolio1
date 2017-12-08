class PortfoliosController < ApplicationController
	
	layout 'portfolio'

	def index
		@portfolio_items = Portfolio.all
	end

	def new
		@angular_portfolio_item = Portfolio.new.angular
	end

def new
	@portfolio_item = Portfolio.new
	3.times { @portfolio_item.technologies.build }
end

  def create
    @portfolio_item = Portfolio.new(portfolio_params)

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
		3.times { @portfolio_item.technologies.build }
	end
	
  def update
		@portfolio_item = Portfolio.find(params[:id])

		respond_to do |format|
			if @portfolio_item.update()
				format.html { redirect_to @portfolios_path, notice: 'The record successfully updated.' }

			else
				format.html { render :edit }
			end
		end
	end


def show
	@portfolio_item = Portfolio.find(params[:id])
end
def destroy 
	@portfolio_item = Portfolio.find(params[:id])
	# Perform the lookup
	@portfolio_item.destroy

	# Destroy/delete the record
	@portfolio_item.destroy

	# Redirect
	respond_to do |foramt|
		format.html { redirect_to blogs_url, notice: 'Post was removed'}
	end
end

private

def portfolio_params
	params.require(:portfolio).permit(:title,
									  :subtitle, 
									  :body, 
									  technologies_attributes: [:name])
	
end


end




