class FaulureNotifier < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.faulure_notifier.error_occured.subject
  #
  def error_occured(error)
    @error = error
    mail :to => "jaturken@gmail.com", :subject => 'Depot App Error Incident'
  end
end
