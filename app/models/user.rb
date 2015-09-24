require 'bcrypt'

attr_reader :password
attr_accessor :password_confirmation

class User
  include DataMapper::Resource

  property :id, Serial
  property :email, String
  property :password_digest, Text

  def password=(password)
    self.password_digest = BCrypt::Password.create(password)
  end

end
