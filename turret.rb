require 'sinatra'
require 'pp'
set :static, true
set :public_folder, "public"
set :views, "views"

get '/form' do
    erb :form
end

post '/' do
 pp params
 session[:lastname] = params['lastname']
 session[:firstname] = params['firstname']
 session[:table] = params['table']
 erb :index
end

