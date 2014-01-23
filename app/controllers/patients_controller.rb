class PatientsController < ApplicationController

  before_action :set_patient, only: [:show, :edit, :update, :destroy]

  # GET /turns
  # GET /turns.json
  def index
    @patients = Patient.all

  end

  # GET /turns/1
  # GET /turns/1.json
  def show
  end

  # GET /turns/new
  def new
    @patient = Patient.new
  end

  # GET /turns/1/edit
  def edit
  end

  # POST /turns
  # POST /turns.json
  def create
    @patient = Patient.new(patient_params)
    respond_to do |format|
      if @patient.save

        # Tell the UserMailer to send a welcome email after save
        PatientMailer.welcome_email(@patient).deliver

        format.html { redirect_to @patient, notice: 'Sus datos fueron guardados, gracias '  + current_patient.email }
        format.json { render action: 'show', status: :created, location: @patient }
      else
        format.html { render action: 'new' }
        format.json { render json: @patient.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /turns/1
  # PATCH/PUT /turns/1.json
  def update
    respond_to do |format|
      if @patient.update(patient_params)
        format.html { redirect_to @patient, notice: 'Sus datos fueron actualizados, gracias!.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @patient.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /turns/1
  # DELETE /turns/1.json
  def destroy
    @patient.destroy
    respond_to do |format|
      format.html { redirect_to patients_url }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_patient
    @patient = Patient.find(params[:id])
  end

  def patient_params
    params.require(:patient).permit(:name, :lastname, :email, :age, :dni, :gender,:address, :photo)
  end

end
