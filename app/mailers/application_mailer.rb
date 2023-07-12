# frozen_string_literal: true

# main mailer
class ApplicationMailer < ActionMailer::Base
  default from: ENV['DEFAULT_MAIL_FROM_ADDRESS']
  default to: ENV['DEFAULT_MAIL_TO_ADDRESS']
  layout 'mailer'
end
