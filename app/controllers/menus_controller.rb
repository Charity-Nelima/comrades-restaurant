class MenusController < ApplicationController

    def index
        menu = Menu.all
        render json: menu
    end

    def show
        category = Menu.find_by(category:params[:category])
        render json: category
    end


    def create
        menu = Menu.create(menu_params)
        render json: menu, status: :created

    end

    private
    def menu_params
        params.permit(:image, :name, :description, :price, :category)
    end
     
end
