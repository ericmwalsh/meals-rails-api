class SessionsController < Devise::SessionsController
  respond_to :json

  def create
    self.resource = warden.authenticate!(auth_options)
    sign_in(resource_name, resource)
    # data = {
    #   token: self.resource.authentication_token,
    #   email: self.resource.email
    # }
    data = JSONAPI::ResourceSerializer.new( AdminResource )
      .serialize_to_hash( AdminResource.new( self.resource, nil ) )
    render json: data, status: 201
  rescue
    render json: { error: "Incorrect credentials." }, status: 401
  end

  private

end
