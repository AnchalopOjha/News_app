class CategoriesController < ApplicationController
    before_action :authenticate_user!

    def new 
@category=Category.new
    end
    def create
        @category=Category.new(category_params)
        @category.save
        redirect_to categories_path

    end
    private
    def category_params
        params.require(:category).permit(:name)
      end
end
