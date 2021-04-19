class VillagersController < ApplicationController

    get "/villagers" do
        @villagers = Villager.all
        erb :"villagers/index"
    end

    get "/villagers/new" do 
        erb :"villagers/new"
    end


    
end