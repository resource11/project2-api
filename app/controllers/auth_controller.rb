# this inherits from the ApplicationController
class AuthController < ApplicationController
  # skips the action you specify, with the
  # conditions you specify

  # Here, you can't authenticate before
  # you register or login
  skip_before_action :authenticate, only: [:login, :register]

  # POST /login
  def login
    @user = User.authenticate credentials[:email], credentials[:password]
    if @user
      # serializer takes your data and serializes it
      # so it can be sent back to front end

      # This particular method returns the token
      # if the user exists or returns unauthorized
      # if the user doesn't exist
      render json: @user, serializer: LoginUserSerializer, root: 'user'
    else
      head :unauthorized
    end
  end

  # POST /register
  def register
    @user = User.create(credentials)

    if @user.valid?
      render json: @user, status: :created, location: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /logout/1

  # This logout method logs out the current user
  # and generates a new token that's
  # not given to anybody
  # need a token in your system otherwise
  # it's a security issue
  # you shouldn't be able to log out somebody
  def logout
    if current_user == User.find(params[:id])
      current_user.logout
      # head is response header
      head :no_content
      # you could put a statement here to say
      # you've logged out instead of head :no_content
    else
      head :unauthorized
    end
  end

  def credentials
    params.require(:credentials).permit(:email,
                                        :password,
                                        :password_confirmation)
  end

  private :credentials
end
