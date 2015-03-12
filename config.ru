require 'rubygems'
require 'bundler'
Bundler.require
#require 'sinatra'
#require 'vendor/sinatra/lib/sinatra.rb'
 
set :public, File.expand_path(File.dirname(__FILE__) + '/public') # Include your public folder
set :views, File.expand_path(File.dirname(__FILE__) + '/views')  # Include the views
 
set :environment, :staging
 
disable :run, :reload
 
require 'turret.rb' # replace this with your sinatra app file
run Sinatra::Application
