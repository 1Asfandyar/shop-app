# frozen_string_literal: true

# ApplicationController
class ApplicationController < ActionController::Base
  before_action :redirect_to_https, if: :should_enforce_https?

  private

  def should_enforce_https?
    Rails.env.production? || Rails.env.staging?
  end

  def redirect_to_https
    return if request.ssl?

    redirect_to protocol: 'https://', status: :moved_permanently
  end
end
