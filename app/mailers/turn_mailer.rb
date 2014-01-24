class TurnMailer < ActionMailer::Base

    default from: 'notifications@example.com'

    def welcome_email(turn)
      @turn = turn
      @url  = 'http://example.com/login'
      mail(to: @turn.patient.email  ,subject: 'Nutricionista - Turno')
    end

end
