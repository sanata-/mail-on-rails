class ApiService
attr_reader :url, :token, :domain

  def initialize
    @domain = ENV["yandex_pdd_domain"]
    @token  = ENV["yandex_pdd_token"]
    @url    = 'https://pddimp.yandex.ru'
  end
end
