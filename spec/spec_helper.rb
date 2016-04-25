require 'webmock/rspec'
WebMock.disable_net_connect!(allow_localhost: true)

RSpec.configure do |config|

  config.before(:all) do
    @domain = ENV["yandex_pdd_domain"]
    @token  = ENV["yandex_pdd_token"]
    @url = 'https://pddimp.yandex.ru/api2/admin/email'
  end

  config.before(:each) do
    stub_request(:post, "#{@url}/add?domain=#{@domain}&login=test5&password=1231213").with(:headers => {'Pddtoken'=> @token}).to_return(:status => 200, :body => "", :headers => {})
    stub_request(:post, "#{@url}/del?domain=#{@domain}&login=test5&password=1231213").with(:headers => {'Pddtoken'=> @token}).to_return(:status => 200, :body => "", :headers => {})
    stub_request(:post, "#{@url}/edit?domain=#{@domain}&login=test5&password=1231213").
         with(:headers => {'Pddtoken'=> @token }).
         to_return(:status => 200, :body => "{\"success\":\"ok\"}", :headers => {})
  end

  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.shared_context_metadata_behavior = :apply_to_host_groups
end
