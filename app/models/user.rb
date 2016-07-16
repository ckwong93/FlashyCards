class User < ActiveRecord::Base
  # Remember to create a migration!
  has_many :guesses
  has_many :rounds


  def password
  	@password ||= BCrypt::Password.new(password_hash)
  end

  def password=(new_password)
  	@password = BCrypt::Password.create(new_password)
  	self.password_hash = @password
  end

  def login
  	@user = User.find_by_email(params[:email])
  	if @user.password == params[:password]
  		give_token
  	else
  		redirect_to home_url
  	end
  end
  
end
