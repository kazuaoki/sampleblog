# coding: utf-8

#サイドメニューのブログ一覧は、どのページでも必ず表示するため
#当クラスにて記事情報を取得し、
#ページを表示するContorollerは必ず当クラスを継承する。
class BlogController < ApplicationController
  before_filter :getArticles
  
  #記事に紐付くコメント一覧を取得。
  #Ruby On Railsの動きを把握するため、記事を表示するコントローラを
  #top_controllerとarticles_controller２つ用意したため
  #親クラスにコメント一覧取得メソッドを用意。
  #コメントを取得する必要がある場合に呼び出すこと。
  protected
  def getComments(articleId)
    @comments = Comment.where(article_id: articleId)
  end
  
  #記事一覧取得メソッド
  private
  def getArticles()
    @articles = Article.order("id desc")
  end
end
