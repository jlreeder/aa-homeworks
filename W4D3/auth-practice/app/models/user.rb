# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  username        :string           not null
#  password_digest :string           not null
#  session_token   :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ActiveRecord::Base
  validates :username, :session_token, presence: true
  validates :password_digest, presence: { message: "Password can't be blank" }
  validates :password, length: { minimum: 7, allow_nil: true }
  before_validation :ensure_session_token

  attr_reader :password

  def self.find_by_credentials(username, password)
    user = User.find_by(username: username, password: password)
    password_valid = BCrypt::Password.create(user.password_digest)
      .is_password?(password)
    return user if user && password_valid
  end

  def self.generate_session_token
    SecureRandom::urlsafe_base64
  end

  def reset_session_token!
    self.session_token = User.generate_session_token
    self.save
  end

  def ensure_session_token
    self.session_token ||= User.generate_session_token
  end

  def password=(provided_password)
    @password = provided_password
    self.password_digest = BCrypt::Password.create(provided_password)
  end
end
