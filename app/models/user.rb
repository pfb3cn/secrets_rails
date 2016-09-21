class User < ActiveRecord::Base
    has_secure_password
    validates :name, presence:true
    validates :email, presence:true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }, uniqueness: { case_sensitive:false }
    validates :password, presence:true
    validates :password_confirmation, confirmation:true
end