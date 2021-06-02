class StudiosController < ApplicationController
    before '/studios/*' do
        authentication_required
    end

    get '/studios' do
        @studios = current_user.studios
        erb :'studios/index'
    end
    
    get '/studios/new' do
        erb :"studios/new"
    end

    get '/studios/:id' do
        @studio = current_user.studios.find(params[:id])
        erb :"studios/show"
    end

    post '/studios' do
        @studio = Studio.new
        @studio.name = params[:name]
        @studio.user = current_user

        if @studio.save
            redirect '/studios'
        else
            erb :"studios/new"
        end
    end

    #instruments controller begins
    # get '/studios/:studio_id/instruments/:id' do
    #     @studio = current_user.studios.find(params[:studio_id])
    #     @instrument = @studio.instruments.find(params[:id])

    #     erb :"instruments/show"
    # end

    # post '/studios/:id/instruments' do
    #     @studio = current_user.studios.find(params[:id])
    #     @instrument = @studio.instruments.build(:name => params[:name])

    #     if @instrument.save
    #         redirect "studios/#{@studio.id}"
    #     else
    #         erb :"studios/show"
    #     end
    # end
end