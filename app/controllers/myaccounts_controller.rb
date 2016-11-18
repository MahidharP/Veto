class MyaccountsController < ApplicationController

  def index
    @myaccount = Myaccount.all
  end

  def show
  end

  def new
    @myaccount = Myaccount.new
  end

  def edit
  end

  def create
    @myaccount = Myaccount.new(myaccount_params)

    respond_to do |format|
      if @myaccount.save
        format.html { redirect_to @myaccount, notice: 'Myaccount was successfully created.' }
        format.json { render :show, status: :created, location: @myaccount }
      else
        format.html { render :new }
        format.json { render json: @myaccount.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @myaccount.update(myaccount_params)
        format.html { redirect_to @myaccount, notice: 'Myaccount was successfully updated.' }
        format.json { render :show, status: :ok, location: @myaccount }
      else
        format.html { render :edit }
        format.json { render json: @myaccount.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @myaccount.destroy
    respond_to do |format|
      format.html { redirect_to myaccounts_url, notice: 'Myaccount was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def myaccount_params
      params.require(:myaccount).permit(:user_id, :student_name, :dob, :class, :gender, :nationality, :religion, :father_name, :father_occupation, :father_designation, :email, :income, :phone_number, :mother_name, :mother_occupation, :telephone, qualifications_attributes: [:id, :name, :_destroy])
    end
end
