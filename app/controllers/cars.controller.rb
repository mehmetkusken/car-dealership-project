class CarsController < ApplicationController


    get '/submited' do
        erb :'/cars/submited'
    end

    get '/new' do
        @car = Car.new
        erb :'/cars/new'
    end 

    post '/submited' do
    car = current_user.cars.create(params[:car])
        if car.valid?
        redirect '/carlist'
        else
        redirect '/new'
        end
    end

    get '/carlist' do
        @car = Car.all
        erb :'/cars/carlist'  
    end 

    get '/carlist/:id' do
        if logged_in?
        @car = Car.find(params[:id])
        erb :'/cars/carindex'  
        else 
            redirect '/login'
        end 
    end 

    get "/carlist/:id/edit" do
        @car = Car.find(params[:id])
        if @car.user_id == current_user.id
            erb :'/cars/edit'  
        else
            redirect "/carlist/#{@car.id}"
        end
    end

    patch '/carlist/:id' do
        car = Car.find(params[:id])
        car.update(params[:car])
        redirect "/carlist/#{car.id}"
    end

    delete "/carlist/:id" do
        @car = Car.find_by_id(params[:id])
        if @car.user_id == current_user.id
            @car.delete
            redirect to '/carlist'
        else
            redirect "/carlist/#{@car.id}"
        end
    end
end
