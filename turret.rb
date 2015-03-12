require 'sinatra'
set :static, true
set :public_folder, "public"
set :views, "views"

get '/' do
      return 'Hello world'
end


class HelloWorldApp < Sinatra::Base
  get '/:greeting/?:name?' do
    "#{params[:greeting]}, #{params[:name] ? params[:name] : 'world'}!"
  end
end
