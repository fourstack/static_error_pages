module StaticErrorPages
  mattr_accessor :supported_errors
  @@supported_errors = %w(404 422 500 502)

  class Engine < ::Rails::Engine
    isolate_namespace StaticErrorPages
  end
end
