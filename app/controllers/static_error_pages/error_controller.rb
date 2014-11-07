module StaticErrorPages
  class ErrorController < StaticErrorPages::ApplicationController

    if defined?(Devise)
      skip_before_filter :authenticate_user!
    end

    def show
      render action: params[:code]
    end
  end
end
