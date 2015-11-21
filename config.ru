require './Server'
configure do
  set :public_folder, File.dirname(__FILE__) + '/public'
  enable :cross_origin
  set :allow_origin, :any
  set :allow_methods, [:get, :post, :options]
  set :allow_credentials, true
  set :max_age, "1728000"
  set :expose_headers, ['Content-Type']
end
run Sinatra::Application