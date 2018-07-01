VCR.configure do |c|
  c.allow_http_connections_when_no_cassette = true
  # the directory where your cassettes will be saved
  c.cassette_library_dir = 'spec/support/vcr'
  # your HTTP request service.
  c.hook_into :webmock
end

RSpec.configure do |c|
  c.around(:each, :vcr) do |example|
    name =
      example.metadata[:full_description].split(/\s+/, 2).join('/').
      underscore.gsub(%r{[^\w\/]+}, '_')
    options =
      example.metadata.slice(:record, :match_requests_on).
      except(:example_group)
    VCR.use_cassette(name, options) { example.call }
  end
end
