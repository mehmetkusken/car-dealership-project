require './config/environment'
require "./app/models/user" 

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, ENV["SESSION_SECRET"]
  end

  get '/' do
    erb :'welcome'
  end
  
  get '/welcome' do
    erb :'/welcome'
  end 

  get '/about-us' do
    erb :'/about-us'
  end

  get '/contact-us' do
    erb :'/contact-us'
  end

  helpers do

    def logged_in?
    !!session[:user_id]
    end

    def current_user
      logged_in? && User.find(session[:user_id])
    end

  end

  
end
