require 'sinatra'
set :static, true
set :public_folder, "public"
set :views, "views"

get '/' do
  File.open('/home/deploy/turret/current/logfile.log', 'w') { |file|
    file.write("#{params}")
  }
  puts "#{params}"
end
