class AdminResource < JSONAPI::Resource
  abstract

  attributes :email, :token

  def token
    @model.authentication_token
  end
end
