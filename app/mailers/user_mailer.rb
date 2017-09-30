class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.welcome.subject
  #
  def welcome(user)
    @user = user

    mail(to: @user.email , subject: 'Benvindo á Pastelaria Bonjour')
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.purchase_confirmation.subject
  #
  def confirmacao_pedido(user)
    @user = user
    @order = user.orders.last

    mail(to: @user.email, subject: 'Confirmação de Encomenda - Pastelaria Bonjour')
  end
end
