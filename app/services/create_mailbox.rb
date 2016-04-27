class CreateMailbox < ApiService

  def create(login, password)
    request_url = @url + "/api2/admin/email/add"
    result = HTTParty.post(request_url, :query => {:domain => @domain, :login => login, :password => password }, :headers => { 'PddToken' => @token })
    @response = JSON.parse(result.body)
  end

  def response
    @response
  end

end
