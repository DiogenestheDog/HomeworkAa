class User < ApplicationRecord
    validates :username, presence: true
    validates :password_digest, presence: true, length { minimum: 6, allow_nil: true }
    errors.add(:password_digest, "Password can't be blank")
    before_validation :ensure_session_token

    def ensure_session_token
        validates :session_token, presence: true
    end
end
