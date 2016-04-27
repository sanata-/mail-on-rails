class RemoveMailbox < ApiService
  def remove(login)
    request_url = @url + "/api2/admin/email/del"
    result = HTTParty.post(request_url, :query => {:domain => @domain, :login => login }, :headers => { 'PddToken' => @token })
    @response = JSON.parse(result.body)
  end

end
