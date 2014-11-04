StaticErrorPages::Engine.routes.draw do
  StaticErrorPages.supported_errors.each do |code|
    get ":code" => "error#show"
  end
end

