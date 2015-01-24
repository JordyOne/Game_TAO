class User < ActiveRecord::Base
  has_secure_password

  validates :email,
            :presence => {:message => "Your Account could not be created"}

  validates :password,
            :presence => {:message => "Your Account could not be created"}

  def self.id
    self[:id]
  end
end