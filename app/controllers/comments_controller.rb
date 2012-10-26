# coding: utf-8

class CommentsController < ApplicationController
  def create
    @comment = Comment.new(:name => params[:name])
    @comment.comment = params[:comment]
    @comment.article_id = params[:article_id]
    if @comment.save
      flash.notice = "コメントを登録しました。"
    else
      flash[:comment] = "お名前、コメント両方に入力してください。"
    end
    
    redirect_to params[:from] || :root
  end
end
