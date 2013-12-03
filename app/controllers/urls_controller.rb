class UrlsController < ApplicationController
	def new	
		@urls = Url.new
		
	end
	def create
		safe_url_params = params.require(:url).permit(:link)

		@urls = Url.new safe_url_params
		@urls.hash_code = rand(1..1000000)
		@urls.save
		redirect_to @urls
		
	end
	def show
		@urls = Url.find params[:id]
		@full_path = "#{request.protocol}#{request.host_with_port}/#{@urls.hash_code}"

	end
	def redirector
		@urls = Url.find_by hash_code: params[:code]
		if @urls
			redirect_to @urls.link
		else
			redirect_to root_path
		end

	end
	def preview
		@urls = Url.find_by hash_code: params[:code]
		unless @urls
			redirect_to root_path
		end
	end
end

