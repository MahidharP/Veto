class MyformsController < ApplicationController
  before_action :set_myform, only: [:show, :edit, :update, :destroy]

  # GET /myforms
  # GET /myforms.json
  def index
    @myforms = Myform.all
  end

  # GET /myforms/1
  # GET /myforms/1.json
  def show
  end

  # GET /myforms/new
  def new
    @myform = Myform.new
  end

  # GET /myforms/1/edit
  def edit
  end

  # POST /myforms
  # POST /myforms.json
  def create
    @myform = Myform.new(myform_params)

    respond_to do |format|
      if @myform.save
        format.html { redirect_to @myform, notice: 'Myform was successfully created.' }
        format.json { render :show, status: :created, location: @myform }
      else
        format.html { render :new }
        format.json { render json: @myform.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /myforms/1
  # PATCH/PUT /myforms/1.json
  def update
    respond_to do |format|
      if @myform.update(myform_params)
        format.html { redirect_to @myform, notice: 'Myform was successfully updated.' }
        format.json { render :show, status: :ok, location: @myform }
      else
        format.html { render :edit }
        format.json { render json: @myform.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /myforms/1
  # DELETE /myforms/1.json
  def destroy
    @myform.destroy
    respond_to do |format|
      format.html { redirect_to myforms_url, notice: 'Myform was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_myform
      @myform = Myform.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def myform_params
      params.require(:myform).permit(:user_id, :student_name)
    end
end
