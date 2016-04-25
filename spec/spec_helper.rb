require 'webmock/rspec'
WebMock.disable_net_connect!(allow_localhost: true)

RSpec.configure do |config|

  config.before(:each) do
    stub_request(:post, "https://pddimp.yandex.ru/api2/admin/email/add?domain=osom.top&login=test5&password=1231213").with(:headers => {'Pddtoken'=>'GMWRCQNIIO4WOO2BSIV36C3JU6YSCDXJH6YXNXAX433OKNMUTYKQ'}).to_return(:status => 200, :body => "", :headers => {})
    stub_request(:post, "https://pddimp.yandex.ru/api2/admin/email/del?domain=osom.top&login=test5&password=1231213").with(:headers => {'Pddtoken'=>'GMWRCQNIIO4WOO2BSIV36C3JU6YSCDXJH6YXNXAX433OKNMUTYKQ'}).to_return(:status => 200, :body => "", :headers => {})
    stub_request(:post, "https://pddimp.yandex.ru/api2/admin/email/edit?domain=osom.top&login=test5&password=1231213").
         with(:headers => {'Pddtoken'=>'GMWRCQNIIO4WOO2BSIV36C3JU6YSCDXJH6YXNXAX433OKNMUTYKQ'}).
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
