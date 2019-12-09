class User < ApplicationRecord
  has_secure_password
  validates_uniqueness_of :email

  #Need to create SESSIONS for the active user, and terminate on signing out of the account!

  #Need to create ADMIN user - and restrict areas to only admin!

end
