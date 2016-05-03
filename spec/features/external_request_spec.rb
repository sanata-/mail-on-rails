# require 'spec_helper'
#
# before(:all) do
#   @mail = MailboxService.new
#   @mail.params(login: 'test5', password: '1231213')
# end
#
# feature 'When user create account' do
#   describe 'Mailbox service' do
#     scenario '#create new address' do
#
#       mail = MailboxService.new
#       mail.params(login: 'test5', password: '1231213')
#       response = mail.create
#       expect(response).to be
#     end
#   end
# end
#
# feature 'When user delete account' do
#   describe 'Mailbox service' do
#     scenario '#delete address' do
#
#       mail = MailboxService.new
#       mail.params(login: 'test5', password: '1231213')
#       response = mail.delete
#       expect(response).to be
#     end
#   end
# end
#
# feature 'When user update account' do
#   describe 'Mailbox service' do
#     scenario '#update address' do
#
#       mail = MailboxService.new
#       mail.params(login: 'test5', password: '1231213')
#       response = JSON.parse(mail.update)
#       expect(response["success"]).to eq("ok")
#     end
#   end
# end
#
#
# # stub_request(:get, "https://pddimp.yandex.ru").
# #       to_return(:body => %Q(
# # {
# #     "domain": "{имя домена}",
# #     "login":"{email-адрес почтового ящика}",
# #     "uid": "{идентификатор почтового ящика}",
# #     "success": "{статус выполнения запроса}"
# # }
# # )
