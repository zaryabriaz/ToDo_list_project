class ToDosController < ApplicationController
  def index
    @todos =ToDo.all
  end

  def show
    @todo =ToDo.find(params[:id])
  end

  def new
    @todo =ToDo.new
  end

  def edit
    @todo =ToDo.find(params[:id])

  end

  def update
    @todo =ToDo.find(params[:id])
    if @todo.update(params_todo)
      redirect_to @todo
    else
      render 'new'
    end
  end

  def destroy
    @todo =ToDo.find(params[:id])
    @todo.destroy

    redirect_to to_dos_path
  end

  def create
    @todo =ToDo.new(params_todo)
    if @todo.save
      redirect_to @todo
    else
      render 'new'
    end
  end

  private
      def params_todo
        params.require(:to_do).permit(:task,:status,:due_date)
      end

end
