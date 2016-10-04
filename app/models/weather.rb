class Weather < ActiveRecord::Base


  before_create :current_weather

  private

  def current_weather
    begin
      response = RestClient::Request.new(
      :method => :post,
      :url => 'http://api.wunderground.com/api/febfd3b059934ab2/conditions/q/' + zip + '.json',
      :user => ENV['API_KEY'],
      :payload => { :zip => zip }
      ).execute
    # self.update, parsed response etc.

      parsed_response = JSON.parse(response)

      location_data = parsed_response['current_observation']['display_location']

      self.city = location_data['city']
      self.state = location_data['state']
  

    rescue
      throw(:abort)
    end
  end
end
