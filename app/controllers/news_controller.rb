class NewsController < ApplicationController

    def index
        render :json => News.find(1)
    end
    
    def update
        news = News.find(1)
        news.update(news_details)
    end

    private
        def news_details
            params.permit(:news)
        end
end
