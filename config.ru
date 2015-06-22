# This file is used by Rack-based servers to start the application.

require ::File.expand_path('../config/environment', __FILE__)
run Rails.application
# use Rack::Cors do
#   allow do
#     origins 'localhost:4200', '127.0.0.1:4200'
# 
# 
#     resource '*',
#         headers: :any,
#         methods: [:get, :post, :delete, :put, :options, :head],
#         credentials: true,
#         max_age: 0
#   end
# 
# end