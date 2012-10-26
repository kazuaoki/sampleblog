# coding: utf-8

class SessionsController < ApplicationController
  def create
    user = User.where(name: params[:name], password: params[:password]).first
    if user
      session[:user] = user
    else
      flash.alert = "ユーザ名またはパスワードが正しくありません。"
    end
    redirect_to params[:from] || :root
  end

  def destroy
    session.delete(:user)
    redirect_to :root
  end
end
