class MailboxService < ApiService



  def params(login:, password:)
    @login = login
    @password = password
  end


  def status
    @status ||= create
  end

  # def add_uid
  #   success ? uid : nil
  # end

  def uid
    @uid ||= status["uid"]
  end


  def success
    true if status["success"] == "ok"
  end


  def create
    request_url = @url + "/api2/admin/email/add"
    HTTParty.post(request_url, :query => {:domain => @domain, :login => @login, :password => @password }, :headers => { 'PddToken' => @token })
  end

  def delete
    request_url = @url + "/api2/admin/email/del"
    HTTParty.post(request_url, :query => {:domain => @domain, :login => @login, :password => @password }, :headers => { 'PddToken' => @token })
  end

end
