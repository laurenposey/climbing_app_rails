class WeatherConditions < ActiveRecord::Base

  private

  def current_weather
    begin
      response = RestClient::Request.new(
      :method => :post,
      :url => 'http://api.wunderground.com/api/febfd3b059934ab2/conditions/q/' + zip + '.json',
      :user => ENV['API_KEY'],
      :payload => { :zip => zip}
      ).execute
    rescue
      throw(:abort)
    end
  end
end
