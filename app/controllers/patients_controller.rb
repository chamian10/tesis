class PatientsController < InheritedResources::Base

  def patient_params
    params.require(:patient).permit(:name, :lastname, :email, :age, :age, :dni)
  end
end
