require 'httparty'
require 'rest-client'

class PeerController < ApplicationController
  def index
    zip = params[:zip].to_i
    if zip != 0
      url = 'https://tranquil-citadel-34866.herokuapp.com/peer?zip=' + zip.to_s
      response = HTTParty.get(url)
      return render json: response
    end
    render default
  end

  def default
  end

  def upload
    uploaded_io = params[:csv]
    #url = 'https://tranquil-citadel-34866.herokuapp.com/upload'
    url = 'https://tranquil-citadel-34866.herokuapp.com/peer/upload'

    res = RestClient::Request.execute(
      method: :post,
      url: url,
      :payload => {
            :multipart => true,
            :file => File.new(uploaded_io.path, 'r+')
          },
      headers: {
          'Content-Type' => "multipart/form-data",
          :Accept => "*/*"
      }
    )
    return render json: res
  end
end
