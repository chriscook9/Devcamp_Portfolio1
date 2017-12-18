class PortfoliosController < ApplicationController
	layout 'portfolio'
	access all: [:show, :index, :angular], user: {except: [:destroy, :new, :create, :update, :edit, :sort]}, site_admin: :all
	before_action :set_portfolio_item, only: [:edit, :show, :update, :destroy]

	def index
		@portfolio_items = Portfolio.by_position
	end

	def sort
		params[:order].each do |key, value|
			Portfolio.find(value[:id]).update(position: value[:position])
		end

		head :ok
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
    respond_to do |format|
      if @portfolio_item.update(portfolio_params)
        format.html { redirect_to portfolios_path, notice: 'The record successfully updated.' }
      else
        format.html { render :edit }
	      end
	    end
	  end


	def show
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
			:main_image,
			:thumb_image,
			technologies_attributes: [:name])
	end


	def set_portfolio_item
		@portfolio_item = Portfolio.find(params[:id])
	end
end