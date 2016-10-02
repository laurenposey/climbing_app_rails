class Message < ActiveRecord::Base
  before_create :search_alpinaut

  private

  def search_alpinaut
    begin
      response = RestClient::Request.new(
      :method => :post,
      :url => '',
      :payload => {
        :name => name
      }
      ).execute
    rescue RestClient::BadRequest => error
      throw(:abort)
    end
  end
end
