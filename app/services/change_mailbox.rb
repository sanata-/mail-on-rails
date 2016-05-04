
class ChangeMailbox < ApiService

  # This request is used for editing mailbox
  # parameters: password, user's first and last name,
  # and so on.
  #
  # @return [ nil ]
  def edit(login)
    request_url = @url + "/api2/admin/email/edit"
    result = HTTParty.post(request_url, :query => {:domain => @domain, :login => login, :password => @password }, :headers => { 'PddToken' => @token })
    @response = JSON.parse(result.body)
    create_methods
    return nil
  end


  def create_methods
    @response['account'].keys.each do |k|
      define_singleton_method(k) do
        @response['account']["#{k}"]
      end
    end
  end
end
