class UsersController < ApplicationController

    get '/about-us' do
      erb :'/about-us'
    end
  
    get '/contact-us' do
      erb :'/contact-us'
    end
  
    get '/signup' do
      erb :'/users/signup'
    end
  
    post '/signup' do
      user = User.create(params)
      if user.valid?
        redirect to '/login'
      else
        @errors= user.errors.full_messages
        erb :'/users/signup'
      
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
  
    get '/users' do
      @users = User.all
      erb :'/users/users'
    end
  
  
    get '/logout' do
      erb :'/users/logout'
    end
  
    post '/logout' do
      session.clear
      redirect '/'
    end
  
    get '/user' do
      @user = User.find_by_id(params[:id])
      erb :'/users/user'
    end
  
    delete "/user" do
      @user = User.find_by_id(params[:id]) 
      current_user.destroy
      session.clear
      redirect to '/'
    end
  
  end
  