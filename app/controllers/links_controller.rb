class LinksController < ApplicationController
  before_action :authenticate_user!

  def index
    @links = current_user.links
  end

  def show
    @link = current_user.links.find(params[:id])
  end

  def new
    @link = current_user.links.build
  end

  def edit
    @link = Link.find(params[:id])
  end

  def create
    @link = current_user.links.build(link_params)
     if @link.save
       @link.save
       redirect_to link_path(@link), notice: 'Link was saved.'
     else
       redirect_to new_link_path, notice: 'Link was not saved.', alert: @link.errors.full_messages
     end
  end

  def update
    @link = Link.find(params[:id])
    @link.update(name: params[:name])
    @link.update(source: params[:source])
    @link.update(description: params[:description])
    redirect_to link_path(@link)
  end

  def destroy
    @link = current_user.links.find(params[:id])
    @link.destroy
    redirect_to root_path, notice: 'This link has been deleted.'
  end


  private

  def link_params
    params.require(:link).permit(:name, :source, :description)
  end
end
