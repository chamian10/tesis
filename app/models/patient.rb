class Patient < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_one :history
  has_many :turns

  validates_presence_of :email

  after_create :send_admin_mail

  def send_admin_mail
    PatientMailer.welcome_email(self).deliver
  end

  mount_uploader :photo, PhotoUploader

end
