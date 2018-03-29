class ApplicationMailer < ActionMailer::Base
  default from: 'from@fortune500.herokuapp.com'
  layout 'mailer'
end
