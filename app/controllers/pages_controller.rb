class PagesController < ApplicationController
  def new
    @page = Page.new
  end

  def create
    @page = Page.new(page_params)
    if    @page.save
      redirect_to @page
    else
      render 'new'
    end
  end

  def show
    @page = Page.find(params[:id])
  end

  def index
    @pages = Page.all
  end

  def edit
    @page = Page.find(params[:id])
  end
  def update
   # if @page.update(page_params)
   #   redirect_to @page
   # else
   #   render 'edit'
   # end
    @page = Page.find(params[:id])
    @page.update(page_params)
    redirect_to @page
  end
  def destroy
    @page = Page.find(params[:id])
    @page.destroy

    redirect_to pages_path
  end
  private
  def page_params
    params.require(:page).permit(:title, :content, :sort_id, :parent_id)
  end

end
