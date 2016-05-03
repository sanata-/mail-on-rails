class MailboxService < ApiService

  def create(login, password)
    request_url = @url + "/api2/admin/email/add"
    result = HTTParty.post(request_url, :query => {:domain => @domain, :login => login, :password => password }, :headers => { 'PddToken' => @token })
    @response = JSON.parse(result.body)
  end

  def remove(login)
    request_url = @url + "/api2/admin/email/del"
    result = HTTParty.post(request_url, :query => {:domain => @domain, :login => login }, :headers => { 'PddToken' => @token })
    @response = JSON.parse(result.body)
  end

  def list
    request_url = @url + "/api2/admin/email/list?"
    result = HTTParty.get(request_url, :query => {:domain => @domain}, :headers => { 'PddToken' => @token })
    @response = JSON.parse(result.body)
    @response['accounts']
  end

  def counters(login)
    request_url = @url + "/api2/admin/email/counters?"
    result = HTTParty.get(request_url, :query => {:domain => @domain, login: login }, :headers => { 'PddToken' => @token })
    @response = JSON.parse(result.body)
  end

  def update(login, params={})
    request_url = @url + "/api2/admin/email/edit"
    result = HTTParty.post(request_url, :query => {:domain => @domain, login: login }, :headers => { 'PddToken' => @token })
    @response = JSON.parse(result.body)
    @response['account'].delete_if { |key, value| value.blank? }
  end

  def params(hash)
    update(login)

    @params.fname
  end

end
