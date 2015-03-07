class TodoList2sController < ApplicationController
  before_action :set_todo_list2, only: [:show, :edit, :update, :destroy]

  # GET /todo_list2s
  # GET /todo_list2s.json
  def index
    @todo_list2s = TodoList2.all
  end

  # GET /todo_list2s/1
  # GET /todo_list2s/1.json
  def show
  end

  # GET /todo_list2s/new
  def new
    @todo_list2 = TodoList2.new
  end

  # GET /todo_list2s/1/edit
  def edit
  end

  # POST /todo_list2s
  # POST /todo_list2s.json
  def create
    @todo_list2 = TodoList2.new(todo_list2_params)

    respond_to do |format|
      if @todo_list2.save
        format.html { redirect_to @todo_list2, notice: 'Todo list2 was successfully created.' }
        format.json { render action: 'show', status: :created, location: @todo_list2 }
      else
        format.html { render action: 'new' }
        format.json { render json: @todo_list2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /todo_list2s/1
  # PATCH/PUT /todo_list2s/1.json
  def update
    respond_to do |format|
      if @todo_list2.update(todo_list2_params)
        format.html { redirect_to @todo_list2, notice: 'Todo list2 was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @todo_list2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /todo_list2s/1
  # DELETE /todo_list2s/1.json
  def destroy
    @todo_list2.destroy
    respond_to do |format|
      format.html { redirect_to todo_list2s_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_todo_list2
      @todo_list2 = TodoList2.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def todo_list2_params
      params.require(:todo_list2).permit(:title, :description)
    end
end
