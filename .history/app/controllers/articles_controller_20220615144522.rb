class ArticlesController < ActionController::Base
  def show()
    @article = Article.find(params[:id])
  end

  def index()
    @articles = Article.all
  end

  def new
    @article = Article.new()
  end

  def create
    # render plain: params[:article]
    @article = Article.new(params.require(:article).permit(:title, :description))
    if @article.save 
      redirect_to article_path(@article)
    else
      render 'new'
    end
  end

end
