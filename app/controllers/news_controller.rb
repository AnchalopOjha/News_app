class NewsController < ApplicationController
    before_action :authenticate_user!
    def index 
        @news=News.all
    end
    def new 
@news=News.new
    end
    def create
       
        @news=News.new(news_params)
        @news.save
        redirect_to news_index_path

    end
    private
    def news_params
        params.require(:news).permit(:title,:author_name,:description,:sub_title,:category_id,:city_id)
      end
end

