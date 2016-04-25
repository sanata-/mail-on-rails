class DomainService < ApiService
  



  def domains
    request_url = @url + '/api2/admin/domain/domains'
    HTTParty.get(request_url, {:headers => { 'PddToken' => "#{@token}" }}).to_h["domains"]
  end
end
