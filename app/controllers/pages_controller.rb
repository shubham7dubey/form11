class PagesController < ApplicationController
  def home
  	@name=params[:user]
  	@pass=params[:password]
    @tempPass=params[:password]
    @tempname=params[:user]

  	

  end
  def login
  	@name=params[:user]
  	@pass=params[:password]
    @temppass=params[:password]
    @tempname=params[:user]
  end
end
