class StudentMailer < ActionMailer::Base
  default :from => "quizzes-noreply@bcfdmo.com"

  def certificate_email(attempt)
    @score = attempt.percent_correct
    @quizname = attempt.quiz.name
    @student = attempt.student.organization_id
    mail(:to => attempt.student.email, :cc => 'training@bcfdmo.com', :subject => "Certificate for #{@quizname}")
  end
end
