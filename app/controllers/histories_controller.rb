class HistoriesController < InheritedResources::Base

  def patient_params
    params.require(:history).permit(:height, :current_weight, :customary_weight, :circumference, :activity, :degree_of_stress, :pathology,
                                    :observation, :nutrition_diagnosis, :patient_id)
  end

end
