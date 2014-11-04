module StaticErrorPages
  class ErrorController < ::ApplicationController

    if defined?(Devise)
      skip_before_filter :authenticate_user!
    end

    def show
      render action: params[:code]
    end
  end
end
