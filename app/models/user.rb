class User < ApplicationRecord
    validates :password, presence: true, length: { minimum: 6 }
    validates :username, presence: true, length: { minimum: 4 }
    validates :email, format: { with: URI::MailTo::EMAIL_REGEXP}
end
