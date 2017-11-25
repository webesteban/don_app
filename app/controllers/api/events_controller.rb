class API::EventsController < API::APIController

	def all
        events = Event.all        
        json_events = []
        events.each do |event|
            json_events.push({
                name: event.name,
                lat: event.lat,
                lon: event.lon,
                address: event.address,
                start_time: event.start_time.strftime("%m/%d/%Y %H:%M") ,
                id: event.id,
                end_time: event.end_time.strftime("%m/%d/%Y %H:%M")
            })
        end
        response = {:events => json_events}
        status = 200

        render :json => response, :status => status
    end

    def event
        if params[:id].nil?
            response = {:success => false, :error => 'Missing params'}
            status = 403
        else
            event = Event.find_by_id(params[:id])
            if event.nil?
                response = {success: false, error: "Event not Found"}
                status = 404 
            else
                response = {
                        success: true,
                        data: {
                            name: event.name,
                            lat: event.lat,
                            lon: event.lon,
                            address: event.address,
                            start_time: event.start_time.strftime("%m/%d/%Y %H:%M") ,
                            id: event.id,
                            end_time: event.end_time.strftime("%m/%d/%Y %H:%M")
                            }
                        }
                status = 200
            end
        end
        render :json => response, :status => status
    end

    def self.event_notification(event_id)
        fcm = FCM.new(ENV['FCM_API_KEY'])
        devices = DeviceToken.all
        unless devices.nil?
            registration_ids = []
            devices.each do |device|
                registration_ids.push(device.token)
            end
            options = {}
            options[:notification] = {} 
            options[:notification][:title] = "Donación en Progreso" 
            options[:notification][:body] = "Nueva Jornada de Donación"
            options[:data] = {}
            options[:data][:id] = event_id         
            callback = fcm.send(registration_ids, options)              
            response = {:success => true, :message => callback}
            status = 200
        else
            response = {success: false, error: "No Devices Found"}
            status = 404
        end        
        render :json => response, :status => status
    end
end
