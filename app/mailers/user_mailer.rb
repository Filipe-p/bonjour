class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.welcome.subject
  #
  def welcome(user)
    @user = user

    mail(to: @user.email, subject: 'Bem-vindo à Pastelaria Bonjour')
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.purchase_confirmation.subject
  #
  def purchase_confirmation(order)
    @order = order
    @delivery = @order.delivery
    if @delivery.address.blank?
      @address = "Na loja"
    else
      @address = @delivery.address
    end

    mail(to: @delivery.contact_email, subject: 'Confirmação de Encomenda - Pastelaria Bonjour')
  end
end
