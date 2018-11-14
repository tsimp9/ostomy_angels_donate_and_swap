# Preview all emails at http://localhost:3000/rails/mailers/reserved_mailer
class ReservedMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/reserved_mailer/notify
  def notify
    ReservedMailer.notify
  end

end
