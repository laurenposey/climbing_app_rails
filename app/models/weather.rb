class Weather < ActiveRecord::Base
  before_create :current_weather

  private

  def current_weather
    begin
      response = RestClient::Request.new(
      :method => :post,
      :url => 'http://api.wunderground.com/api/8eb4c43ad5/conditions/q/' + zip + '.json',
      :user => ENV['API_KEY'],
      :payload => { :zip => zip,
                    :city => city,
                    :state => state,
                    :forcast => forcast }
      ).execute
    rescue
      throw(:abort)
    end
  end
end
