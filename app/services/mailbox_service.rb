class MailboxService < ApiService



  def params
    @login = 'test5'
    @password = '1231213'
  end


  def status
    @status
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
    response = HTTParty.post(request_url, :query => {:domain => @domain, :login => @login, :password => @password }, :headers => { 'PddToken' => @token })
    @status = JSON.parse(response.body)
  end


end
