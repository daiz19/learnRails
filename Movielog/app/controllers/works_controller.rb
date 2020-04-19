class WorksController < ApplicationController
  before_action :work_find, only: [:edit, :show, :update, :destroy]

  def index
    @works = Work.all.by_position
  end
  def show
  end
  def new
    @work = Work.new
    @work.director_id = params[:director_id] if params[:director_id].present?
  end
  def create
    @work = Work.new(work_params)
    if @work.save
      redirect_to works_path
    else
      render new
    end
  end
  def edit
  end
  def update
    if @work.update(work_params)
      redirect_to work_path(@work)
    else
      render 'edit'
    end
  end
  def destroy
    @work.destroy
    redirect_to works_path
  end

  def move_higher
    Work.find(params[:id]).move_higher
    redirect_to :action => 'index'
  end

  private

  def work_params
    params[:work].permit!
  end

  def work_find
    @work = Work.find(params[:id])
  end
  
end
