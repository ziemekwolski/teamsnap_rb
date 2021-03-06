require 'coveralls'
Coveralls.wear!

require "teamsnap_rb"
require "pry"
require "webmock/rspec"
require "vcr"

RSpec.configure do |config|
  config.extend VCR::RSpec::Macros
  config.color = true
  config.order = "random"
end

VCR.configure do |c|
  c.configure_rspec_metadata!
  c.cassette_library_dir = "spec/fixtures/cassettes"
  c.hook_into :webmock
end
