class TurnsController < InheritedResources::Base

  def turn_params
    params.require(:turn).permit(:date ,:state, :patient_id)
  end

end
