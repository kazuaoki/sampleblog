# coding: utf-8

#トップページ用コントローラ
#ブログの他に管理機能を備えたサイトを想定の上用意したクラス。
#今回はブログのみの実装であるため、
#トップページで最新の記事を表示するためだけのもの
class TopController < BlogController
  def index
    @contentArticle = Article.last()
    unless @contentArticle.nil?
      getComments(@contentArticle.id)
    end
  end
end
