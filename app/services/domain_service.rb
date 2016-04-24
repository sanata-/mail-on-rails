class DomainService
  attr_accessor :url, :token, :domain

  def initialize
    @domain = ENV["yandex_pdd_domain"]
    @token  = ENV["yandex_pdd_token"]
    @url    = 'https://pddimp.yandex.ru'
  end

  def domain_list
    request_url = @url + '/api2/admin/domain/domains'
    HTTParty.get(request_url, {:headers => { 'PddToken' => "#{@token}" }})#.to_h["domains"]
  end
end
