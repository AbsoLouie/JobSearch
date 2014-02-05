module Authentication

  def authenticate(args)
    user = args[:user]
    password = args[:password]
    create_session(args[:user]) if user.authenticate(password)
  end

  def create_session(user)
    session[:user] = user
  end

end