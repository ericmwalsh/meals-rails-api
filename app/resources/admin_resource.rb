class AdminResource < JSONAPI::Resource
  abstract

  attributes :email, :authentication_token
end
