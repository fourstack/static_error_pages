module StaticErrorPages
  class InstallGenerator < Rails::Generators::Base
    source_root File.expand_path('../templates', __FILE__)
    def create_views
      StaticErrorPages.supported_errors.each do |code|
        template "#{code}.html.erb", "app/views/static_error_pages/error/#{code}.html.erb"
      end
      template "application.html.erb", "app/views/layouts/static_error_pages/application.html.erb"
    end
  end
end
