# frozen_string_literal: true

# main mailer
class ApplicationMailer < ActionMailer::Base
  default from: 'abdur@lycusinc.com'
  default to: 'khalil.ahmad1547@gmail.com'
  layout 'mailer'
end
