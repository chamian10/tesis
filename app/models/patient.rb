class Patient < ActiveRecord::Base

  has_many :histories
  has_many :turns

end
