class API::APIController < ApplicationController
	
	skip_before_filter :verify_authenticity_token, if: :json_request?

	def json_request?
		request.format.json?
	end
end
