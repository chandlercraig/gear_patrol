class ProducersController < ApplicationController
    before '/producers/*' do
        authentication_required
    end

    get '/producers/show' do
        @producers = current_user.studios.producers.find(params[:id])
        erb :'producers/show'
    end
    
    get '/producers/new' do
        erb :"producers/new"
    end

    get '/producers/:id' do
        @producers = current_user.studios.producers.find(params[:id])
        erb :"producers/show"
    end

    post '/producers/show' do
        @producer = Producer.new
        @producer.name = params[:name]
        # @studio.user = current_user

        if @producer.save
            redirect '/producers/show'
        else
            erb :"producers/new"
        end
    end

end