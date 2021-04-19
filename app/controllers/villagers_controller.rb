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


    
end