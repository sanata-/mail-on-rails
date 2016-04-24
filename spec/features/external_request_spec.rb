require 'spec_helper'

feature 'When user create account' do
  describe 'Mailbox service' do
    scenario '#create new address' do

      mail = MailboxService.new
      mail.params(login: 'test5', password: '1231213')
      response = mail.create
      expect(response).to be
    end
  end
end
# stub_request(:get, "https://pddimp.yandex.ru").
#       to_return(:body => %Q(
# {
#     "domain": "{имя домена}",
#     "login":"{email-адрес почтового ящика}",
#     "uid": "{идентификатор почтового ящика}",
#     "success": "{статус выполнения запроса}"
# }
# ))
