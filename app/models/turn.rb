class Turn < ActiveRecord::Base
  belongs_to :patient

  validates_presence_of :date, :time, :patient_id

end
