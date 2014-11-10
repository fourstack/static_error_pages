StaticErrorPages
================

Generate static error pages after deploying.

    gem 'static_error_pages', git: 'https://github.com/fourstack/static_error_pages.git'


Generate views:

    rails generate static_error_pages:install

Add to config/routes.rb

    mount StaticErrorPages::Engine, :at => "error"

Generate the error pages

    rake static_error_pages

Add main_app before url helpers if application layout.

## Capistrano

If you want to generate the error pages with capistrano you can use the following task:

    task :static_error_pages, :roles => :app do
      run "cd #{current_release} && #{rake} RAILS_ENV=#{stage} static_error_pages"
    end

This project uses MIT-LICENSE.

