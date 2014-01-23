class PatientMailer < ActionMailer::Base
  default from: 'info@ntp.com.ar'
  default to: 'damianminniti@hotmail.com'


  def welcome_email(patient)
    @patient=patient
    @url  = 'http://example.com/login'
    mail(to: @patient.email, subject: 'Bienvenido a NTP!')
  end

end
