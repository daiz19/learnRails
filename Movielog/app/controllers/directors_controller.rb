class DirectorsController < ApplicationController
    before_action :director_find, only: [:show, :edit, :update, :destroy]
    def index
        @directors = Director.all
    end
    def new
        @director = Director.new
    end
    def create
      @director = Director.new(director_params)
      if @director.save
         redirect_to directors_path
      else
         render 'new'
     end
    end
    def show
    end
    def edit
    end
    def update
        if @director.update(director_params)
            redirect_to director_path(@director)
        else
            render 'edit'
        end
    end
    def destroy
        @director.destroy
        redirect_to directors_path
    end

    private
    def director_params
        params[:director].permit!
    end

    def director_find
        @director = Director.find(params[:id])
    end

end
