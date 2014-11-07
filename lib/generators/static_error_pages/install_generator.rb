module StaticErrorPages
  class InstallGenerator < Rails::Generators::Base
    def create_views
      html = {
        '404' => "<h1>The page you were looking for doesn't exist.</h1>\n<p>You may have mistyped the address or the page may have moved.</p>",
        '422' => "<h1>The change you wanted was rejected.</h1>\n<p>Maybe you tried to change something you didn't have access to.</p>"
      }
      StaticErrorPages.supported_errors.each do |code|
        path = "app/views/static_error_pages/error/#{code}.html.erb"
        create_file path, html.fetch(code, "<h1>We're sorry, but something went wrong.</h1>")
      end
    end
  end
end
