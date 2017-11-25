class API::DeviceController < API::APIController
	
	def get_devices
        if params[:token].nil?
            response = {:success => false, :error => 'Missing params'}
            status = 403
        else 
            device_token = params[:token]
            device = DeviceToken.new(token: device_token)
            if device.save
                response = {:success => true, :description => "Device successfully added."}
                status = 200
            else
                response = {:success => false, :error => {:code => 400, :description => "Device rejected, check parameters."}}
                status = 400
            end
        end
        render :json => response, status => status
    end
end