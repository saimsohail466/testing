module Api
  module V1
    class UsersController < ApiController
      def index
        render json: { users: current_user.teams }, status: :ok        
      end
    end
  end
end
