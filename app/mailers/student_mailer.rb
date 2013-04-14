class StudentMailer < ActionMailer::Base
  def student_mail student
    mail(:to => "student.email", 
         :subject => "Form completed", 
         :from => "jburgess84@gmail.com")
  end

end
