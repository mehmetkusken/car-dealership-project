class UsersController < ApplicationController

    get '/signup' do
      erb :'/users/signup'
    end
  
    post '/signup' do
      user = User.create(params)
      if user.valid?
        redirect to '/login'
      else
        redirect to "/signup"
      end
    end
  
    get '/login' do
      erb :'/users/login'
    end
  
    post '/login' do
      user = User.find_by(:username => params[:username])
      if user && user.authenticate(params[:password])
        session[:user_id] = user.id
        redirect '/welcome'
      else
        redirect '/signup'
      end
    end
  
    get '/logout' do
      erb :'/users/logout'
    end
  
    post '/logout' do
      session.clear
      redirect '/'
    end
  end
  