class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.welcome.subject
  #
  def welcome(user)
    @user = user
    @greeting = "Hi welcome email!    "

    mail(to: @user.email, subject: 'Benvindo á Pastelaria Bonjour')
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.purchase_confirmation.subject
  #
  def purchase_confirmation(user)
    @user = user
    @greeting = "Hi, this is a confirmation email"

    mail(to: @user.email, subject: 'Confirmação de Encomenda - Pastelaria Bonjour')
  end
end
