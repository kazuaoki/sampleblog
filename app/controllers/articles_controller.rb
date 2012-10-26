# coding: utf-8

class ArticlesController < BlogController
  def index
    redirect_to :root
  end
  
  def show
    @contentArticle = Article.find(params[:id])
    unless @contentArticle.nil?
      getComments(@contentArticle.id)
    end
  end

  def new
    @article = Article.new
  end
  
  def edit
    @article = Article.find(params[:id])
  end
  
  def create
    @article = Article.new(params[:article])
    if @article.save
      redirect_to @article, notice: "記事を登録しました。"
    else
      render "new"
    end
  end
  
  def update
    @article = Article.find(params[:id])
    @article.assign_attributes(params[:article])
    if @article.save
      redirect_to @article, notice: "記事を更新しました。"
    else
      render "edit"
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to :root, notice: "記事を削除しました。"
  end
    
end
