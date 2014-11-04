desc "Generates static error pages"
task static_error_pages: :environment do
  app = ActionDispatch::Integration::Session.new(Rails.application)
  StaticErrorPages.supported_errors.each do |error|
    output = "#{error}.html"
    puts "Generating #{output}..."
    outpath = File.join([Rails.root, 'public', output])
    resp = app.get("error/#{error}")
    if resp == 301
      resp = app.get(app.response.headers['Location'])
    end
    if resp == 200
      File.delete(outpath) unless not File.exists?(outpath)
      File.open(outpath, 'w') do |f|
        f.write(app.response.body)
      end
    else
      raise "Error generating #{output}!: #{resp} #{app.response.body}"
    end
  end
end

