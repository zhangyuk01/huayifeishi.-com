class SortsController < ApplicationController
  def new
    @sort = Sort.new
  end

  def create
    # logger.info "=== params: #{params[:sort]} "
    #render plain: params[:sort].inspect
    @sort = Sort.new(sort_params)
   if  @sort.save
     redirect_to @sort
   else
     render 'new'
   end
  end

  def show
   @sort = Sort.find(params[:id])
  end

  def index
   @sorts= Sort.all
  end

  def edit
    @sort = Sort.find(params[:id])
  end

  def update
    @sort = Sort.find(params[:id])

      if @sort.update(sort_params)
            redirect_to @sort
              else
                    render 'edit'
              end
  end

  def destroy
    @sort = Sort.find(params[:id])
    @sort.destroy

    redirect_to sorts_path
  end

  private
   def sort_params
   params.require(:sort).permit(:name, :introduction, :logo)
   end
end
