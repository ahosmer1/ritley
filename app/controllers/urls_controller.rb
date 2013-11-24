class UrlsController < ApplicationController
	def new	
		@urls = Url.new
		
	end
	def create
		@urls = Url.new( safe_url_params )
		@urls.save
		redirect_to "urls#show"
		
	end
	def show

	end
end
