# Abstract base class for Yandex-PDD API
#
# @abstract
# @attr_reader [String] domain
# @attr_reader [String] token
class ApiService
  attr_reader :url, :token, :domain

  def initialize
    @domain = ENV["yandex_pdd_domain"]
    @token  = ENV['yandex_pdd_token']
    @url    = 'https://pddimp.yandex.ru'
  end


  def response
    @response
  end
end
