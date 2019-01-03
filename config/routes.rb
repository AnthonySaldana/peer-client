Rails.application.routes.draw do
  get "/peer", to: "peer#default"
  get "/peer/*zip", to: "peer#index"
  get 'welcome/index'

  post "/upload", to: "peer#upload"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
