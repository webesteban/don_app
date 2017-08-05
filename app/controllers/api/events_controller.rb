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

end
