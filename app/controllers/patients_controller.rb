class PatientsController < InheritedResources::Base

  def patient_params
    params.require(:patient).permit(:name, :age, :email)
  end
end
