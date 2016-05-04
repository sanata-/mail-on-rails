class MailingListService < ApiService

  def add(maillist)
    request_url = @url + "/api2/admin/email/ml/add"
    result = HTTParty.post(request_url, :query => {:domain => @domain, :maillist => maillist }, :headers => { 'PddToken' => @token })
    @response = JSON.parse(result.body)
  end

  def list
    request_url = @url + "/api2/admin/email/ml/list?"
    result = HTTParty.get(request_url, :query => {:domain => @domain}, :headers => { 'PddToken' => @token })
    @response = JSON.parse(result.body)
  end

  def delete(maillist)
    request_url = @url + "/api2/admin/email/ml/del"
    result = HTTParty.post(request_url, :query => {:domain => @domain, :maillist => maillist }, :headers => { 'PddToken' => @token })
    @response = JSON.parse(result.body)
  end
end
