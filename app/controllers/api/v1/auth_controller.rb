class Api::V1::AuthController < ApplicationController
    skip_before_action :authorized, only: [:create]

    
    def create
        
        user = User.find_by(username: params[:username])
        
        if user && user.authenticate(params[:password])
          my_token = encode_token(user.id)
          
          render json: {user: UserSerializer.new(user), token: my_token}
        else
          render json: {error: 'That user could not be found'}, status: 401
        end
      end
    
      def show
    
        if logged_in?
          render json: { user: UserSerializer.new(current_user)  }
        else
          render json: {error: 'No user could be found'}, status: 401
        end
    end
  
end