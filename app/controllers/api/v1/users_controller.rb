module Api
  module V1
    class UsersController < ApplicationController
      respond_to :json
      before_action :authenticate_user!

      def show
        respond_with current_user, only: [:email, :credits]
      end
    end
  end
end
