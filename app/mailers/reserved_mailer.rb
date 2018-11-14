class ReservedMailer < ApplicationMailer
  default from: 'OstomyAngelsDonate@gmail.com'

  def notify(supply)
    @supply = supply
    @greeting = "Hi"


    mail(to: @supply.user.email, subject: 'A Donation Site User Has Reserved One of Your Supplies')
  end
end
