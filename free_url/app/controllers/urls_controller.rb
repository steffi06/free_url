class UrlsController < ApplicationController
  def new
    @url = Url.new
  end
  
  def index
    @urls = Url.all
  end
  
  def create
    @url = Url.new(params[:url])
    @url.short = SecureRandom.urlsafe_base64(3)
    
    @url.save
    redirect_to @url  #redirects to /url ... calls show
  end
  
  def destroy
    @url = Url.find(params[:id])
    @url.destroy
    redirect_to urls_path   #redirects to /urls... urls_path same as urls_url
  end
  
  def edit
    @url = Url.find(params[:id])
  end
  
  def show
    @url = Url.find(params[:id])
  end
  
  def update
    @url = Url.find(params[:id])
    @url.update_attributes(params[:url])
    redirect_to @url
  end
  
end