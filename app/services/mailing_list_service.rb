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

  def subscribe(maillist, subscriber, status)
    request_url = @url + "/api2/admin/email/ml/subscribe"
    result = HTTParty.post(request_url, :query => {:domain => @domain , maillist: maillist, subscriber: subscriber, can_send_on_behalf: status }, :headers => { 'PddToken' => @token })
    @response = JSON.parse(result.body)
  end

  def subscribers(maillist)
    request_url = @url + "/api2/admin/email/ml/subscribers?"
    result = HTTParty.post(request_url, :query => {:domain => @domain , maillist: maillist}, :headers => { 'PddToken' => @token })
    @response = JSON.parse(result.body)
  end

  def unsubscribe(maillist, subscriber)
    request_url = @url + "/api2/admin/email/ml/unsubscribe"
    result = HTTParty.post(request_url, :query => {:domain => @domain , maillist: maillist, subscriber: subscriber }, :headers => { 'PddToken' => @token })
    @response = JSON.parse(result.body)
  end

  def status_get(maillist,subscriber)
    request_url = @url + "/api2/admin/email/ml/get_can_send_on_behalf"
    result = HTTParty.post(request_url, query: {domain: @domain, maillist: maillist, subscriber: subscriber}, headers: { 'PddToken' => @token })
    @response = JSON.parse(result.body)
  end

  def status_set(maillist, subscriber, status)
    request_url = @url + "/api2/admin/email/ml/set_can_send_on_behalf"
    result = HTTParty.post(request_url, query: {domain: @domain, maillist: maillist, subscriber: subscriber, can_send_on_behalf: status}, headers: { 'PddToken' => @token })
    @response = JSON.parse(result.body)
  end

end
