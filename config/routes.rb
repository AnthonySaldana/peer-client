Rails.application.routes.draw do
  get "/", to: "peer#default"
  get "/peer", to: "peer#default"
  get "/search", to: "peer#search"

  get "/peer/*zip", to: "peer#index"
  post "/upload", to: "peer#upload"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
