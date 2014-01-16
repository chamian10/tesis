class PatientsController < InheritedResources::Base

  def patient_params
    params.require(:patient).permit(:name, :lastname, :email, :age, :age, :dni)
  end
  #
  #def index
  #  @patients = Patient.all
  #
  #  respond_to do |format|
  #    format.html # index.html.erb
  #    format.json { render json: @patients }
  #  end
  #end
  #
  ## GET /clients/1
  ## GET /clients/1.json
  #def show
  #  @patient = Patient.find(params[:id])
  #
  #  respond_to do |format|
  #    format.html # show.html.erb
  #    format.json { render json: @patient }
  #  end
  #end
  #
  ## GET /clients/new
  ## GET /clients/new.json
  #def new
  #  @patient = Patient.new
  #
  #  respond_to do |format|
  #    format.html # new.html.erb
  #    format.json { render json: @patient }
  #  end
  #end
  #
  ## GET /clients/1/edit
  #def edit
  #  @patient = Patient.find(params[:id])
  #end
  #
  ## POST /clients
  ## POST /clients.json
  #def create
  #  @patient = Patient.new(params[:patient])
  #
  #  respond_to do |format|
  #    if @patient.save
  #      format.html { redirect_to @patient, notice: 'patient was successfully created.' }
  #      format.json { render json: @patient, status: :created, location: @patient }
  #    else
  #      format.html { render action: "new" }
  #      format.json { render json: @patient.errors, status: :unprocessable_entity }
  #    end
  #  end
  #
  #
  #end
  #
  ## PUT /clients/1
  ## PUT /clients/1.json
  #def update
  #  @patient = Patient.find(params[:id])
  #
  #  respond_to do |format|
  #    if @patient.update_attributes(params[:patient])
  #      format.html { redirect_to @patient, notice: 'Patient was successfully updated.' }
  #      format.json { head :no_content }
  #    else
  #      format.html { render action: "edit" }
  #      format.json { render json: @patient.errors, status: :unprocessable_entity }
  #    end
  #  end
  #end
  #
  ## DELETE /clients/1
  ## DELETE /clients/1.json
  #def destroy
  #  @patient = Patient.find(params[:id])
  #  @patient.destroy
  #
  #  respond_to do |format|
  #    format.html { redirect_to clients_url }
  #    format.json { head :no_content }
  #  end
  #end

end
