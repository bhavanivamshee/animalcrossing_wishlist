class VillagersController < ApplicationController

    get "/villagers" do
        if logged_in?
        @villagers = Villager.all
        erb :"villagers/index"
        else
            redirect "/login"
        end
    end

    get "/villagers/new" do 
        if logged_in?
            erb :"villagers/new"
        else
            redirect "/login"
        end
    end

    get "/villagers/:id" do
        if logged_in?
         @villager = Villager.find_by_id(params[:id])
         erb :"villagers/show"
        else
            redirect "/login"
        end
    end

    post "/villagers" do
        villager = current_user.villager.build(params)
        if villager.save 
            redirect "villagers/#{villager.id}"
        else
            redirect "villagers/new"
        end

    end

    get "/villagers/:id/edit" do
        if logged_in?
         @villager = Villager.find_by_id(params[:id])
         if @villager.user.id == current_user.id
            erb :"villagers/edit"
         else
            redirect "/login"
        else
            redirect "/login"
        end
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

    delete "/villagers/:id" do
        @villager = Villager.find_by_id(params[:id])
        @villager.destroy
        redirect "/villagers"
    end




    
end