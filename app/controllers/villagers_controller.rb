class VillagersController < ApplicationController

    get "/villagers" do
        @villagers = Villager.all
        erb :"villagers/index"
    end

    get "/villagers/new" do 
        erb :"villagers/new"
    end

    get "/villagers/:id" do
        @villager = Villager.find_by_id(params[:id])
        erb :"villagers/show"
    end

    post "/villagers" do
        villager = Villager.new(params)
        if villager.save 
            redirect "villagers/#{villager.id}"
        else
            redirect "villagers/new"
        end

    end

    get "/villagers/:id/edit" do
        @villager = Villager.find_by_id(params[:id])
        erb :"villagers/edit"
    end

    patch "/villagers/:id" do

        @villager = Villager.find_by_id(params[:id])
            params.delete("_method")
        @villager.update(params)
     
        if @villager.update(params) #Did We Make a Change?
            redirect "/villagers/#{@villager.id}"
        else
            redirect "villagers/new"
        end

    end




    
end