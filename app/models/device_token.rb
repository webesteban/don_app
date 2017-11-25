class DeviceToken < ActiveRecord::Base

	validates :token, :presence => true
end
