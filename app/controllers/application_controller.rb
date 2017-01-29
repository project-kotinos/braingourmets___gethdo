# frozen_string_literal: true

##
# Generic application controller.
#
# @author Oliver Klee
#
class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :set_i18n_local_from_parameters

  protected

    ##
    # Sets the locale from the parameters using the default locale as a
    # fallback.
    #
    def set_i18n_local_from_parameters
      locale = params[:locale]
      return false unless locale

      if I18n.locale_available? locale
        I18n.locale = locale
      else
        show_and_log_flash_notice("#{locale} translation not available")
        I18n.locale = I18n.default_locale
      end
    end

  private

    ##
    # Shows a message as a flash notice and logs it as an error.
    #
    # @param [String] message_text the message to show and log
    #
    def show_and_log_flash_notice(message_text)
      flash.now[:notice] = message_text
      logger.error message_text
    end
end
