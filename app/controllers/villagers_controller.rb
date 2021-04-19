class VillagersController < ApplicationController

    get "/villagers" do
        @villagers = Villager.all
        erb :"villagers/index"
    end

    
    
end