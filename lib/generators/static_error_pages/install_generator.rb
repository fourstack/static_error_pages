module StaticErrorPages
  class InstallGenerator < Rails::Generators::Base
    def create_views
      StaticErrorPages.supported_errors.each do |code|
        path = "app/views/static_error_pages/error/#{code}.html.erb"
        create_file path, "Find me in #{path}"
      end
    end
  end
end
