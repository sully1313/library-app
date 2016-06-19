class LibrariesController < ApplicationController

  before_action :logged_in?, only: [:create, :new]

  def index
    @libraries = Library.all
    render :index
  end

  def new
    @libraries = Library.new

    render :new
  end

  def create
    library_params = params.require(:library).permit(:name, :floor_count, :floor_area)
    @library = Library.create(library_params)

    redirect_to "/libraries"
  end
  def show
    @library = Libray.find(params[:id])
    render :show
  end

  def edit
		@library = Library.find(params[:id])
		render :edit
  end

	def update
		@library = Library.find(params[:id])
		library_params = params.require(:library).permit(:name, :floor_count, :floor_area)
		if Library.update(@library.id, library_params)
			flash[:success] = "Library updated"
			redirect_to "/libraries/#{@library.id}"
		else
			render :edit
		end
	end

end
