require 'sinatra'
set :static, true
set :public_folder, "public"
set :views, "views"

get '/' do
  File.open('logfile.log', 'w') { |file|
    file.write("#{params}")
  }
  puts "#{params}"
end
