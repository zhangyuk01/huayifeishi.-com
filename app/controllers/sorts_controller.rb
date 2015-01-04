class SortsController < ApplicationController
  def new
    @sort = Sort.new
  end

  def create
    # logger.info "=== params: #{params[:sort]} "
    #render plain: params[:sort].inspect
    @sort = Sort.new(sort_params)
    @sort.save!
    redirect_to @sort
  end

  def show
   # 这个 @sort 就是个 实例instance.
   @sort = Sort.find(params[:id])
   # 这个name 就是个属性
   @sort.name
  end

  def front_index
    render layout: false
  end




  def index
   @sorts= Sort.all
  end

  def edit
    @sort = Sort.find(params[:id])
  end

  def update
    @sort = Sort.find(params[:id])
    @sort.update(sort_params)
    redirect_to @sort
  end

  def destroy
    @sort = Sort.find(params[:id])
    @sort.destroy

    redirect_to sorts_path
  end

  private
   def sort_params
   params.require(:sort).permit :name, :introduction, :logo , :parent_id
   end
end
