require 'httparty'

class PeerController < ApplicationController
  def index
    zip = params[:zip].to_i
    if zip != 0
      url = 'https://tranquil-mountain-63685.herokuapp.com/peer?zip=' + zip.to_s
      response = HTTParty.get(url)
      return render json: response
    end
    render default
  end
  def default
  end
end
