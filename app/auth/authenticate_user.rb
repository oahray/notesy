class AuthenticateUser
  attr_reader :user

  def initialize(email, password)
    @email = email
    @password = password
    @user = find_user
  end

  def call
    JsonWebToken.encode(user_id: user.id) if user
  end

  def current_user
    user
  end

  private

  attr_reader :email, :password

  def find_user
    user = User.find_by(email: email)
    @user = user
    return user if user&.authenticate(password)

    raise(ExceptionHandler::AuthenticationError, Message.invalid_credentials)
  end
end
