class UrlsController < ApplicationController
	def new	
		@urls = Url.new
		
	end
	def create
		@urls = Url.create
		@urls.save
		redirect_to "urls#show"
		
	end
	def show
		@urls = Url.find(params[:id])

	end
end
