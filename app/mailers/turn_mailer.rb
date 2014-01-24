class TurnMailer < ActionMailer::Base

    default from: 'notifications@example.com'
    default to:   'damianminniti@gmail.com'

    def welcome_email(turn)
      @turn = turn
      @url  = 'http://example.com/login'
      mail(to: @turn.patient.email  ,subject: 'Welcome to My Awesome Site')
    end

end
