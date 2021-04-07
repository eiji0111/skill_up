class FoodsController < ApplicationController
    
    def new
        @food = Food.new
    end
    
    def create
        @food = Food.new(food_params)
        @food.save
        redirect_to foods_path
    end
    
    def index
        @foods = Food.all
    end
    
    def show
        @food = Food.find(params[:id])
    end
    
    def edit
        @food = Food.find(params[:id])
    end
    
    def destroy
    end
    
    def update
        food = Food.find(params[:id])
        food.update(food_params)
        redirect_to food_path(food.id)
    end
    private

    def food_params
        params.require(:food).permit(:title, :image, :expiration)
    end
end
