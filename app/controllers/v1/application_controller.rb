module V1
  class ApplicationController < JSONAPI::ResourceController

    def context
      {current_user: current_user}
    end

  private

    def current_user
      nil
    end


  end


end
