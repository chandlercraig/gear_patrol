class InstrumentsController < ApplicationController
    get '/studios/:studio_id/instruments/:id' do
        @studio = current_user.studios.find(params[:studio_id])
        @instrument = @studio.instruments.find(params[:id])

        erb :"instruments/show"
    end

    post '/studios/:id/instruments' do
        @studio = current_user.studios.find(params[:id])
        @instrument = @studio.instruments.build(:name => params[:name])

        if @instrument.save
            redirect "studios/#{@studio.id}"
        else
            erb :"studios/show"
        end
    end
end