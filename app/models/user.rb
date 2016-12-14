class User < ApplicationRecord
  before_save { self.email = email.downcase }
  validates :name, presence: true, 
                   length: {maximum: 50}
  validates :email, presence: true, 
                    length: {maximum: 255}, 
                    email_format: {message: "doesn't look like an email address"},
                    uniqueness: {case_sensitive: false}
end
