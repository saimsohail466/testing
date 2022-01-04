module Api
  module V1
    class ApiController < ActionController::API
      before_action :authenticate_user

      def current_user
        @current_user ||= User.find(@current_user_id)
      end

      private

      def authenticate_user
        return head :unauthorized if request.headers['Authorization'].blank?

          jwt_payload = JWT.decode('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6M30.GePysfF1al84_oi7ESg3g15k7en2WcSDShcBtISVpKQ', 'saimsohail').first

          @current_user_id = jwt_payload['id']
      rescue JWT::ExpiredSignature, JWT::VerificationError, JWT::DecodeError
        head :unauthorized
      end
    end
  end
end
