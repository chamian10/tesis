class TurnsController < InheritedResources::Base

  def turn_params
    params.require(:patient).permit(:date ,:state, :patient_id)
  end

end
