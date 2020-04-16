class WorksController < ApplicationController
  def index
    @works = Work.all
  end
  def show
    @work = Work.find(params[:id])
  end
  def new
    @work = Work.new
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
    @work = Work.find(params[:id])
  end
  def update
    @work = Work.find(params[:id])
    if @work.update(work_params)
      redirect_to work_path(@work)
    else
      render 'edit'
    end
  end
  def destroy
    @work = Work.find(params[:id])
    @work.destroy
    redirect_to works_path
  end

  private

  def work_params
    params[:work].permit!
  end
end
