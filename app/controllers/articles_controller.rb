class ArticlesController < ApplicationController
    def index
        @Articles = Article.all
    end
    def show
        @Article = Article.find(params[:id])
    end
    def new
    end
    def create
        @Article = Article.new(article_params)

        @Article.save()
        redirect_to @Article
    end

    private
        def article_params
            params.require(:article).permit(:title, :text)
        end
end
