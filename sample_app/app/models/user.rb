class User < ApplicationRecord
    before_save :email_downcase
    validates :name, presence: true, length: { maximum: 50 }
    validates :email, presence: true, length: { maximum: 256 }, uniqueness: { case_sensitive: false }
    validates :password, length: { minimum: 8 }
    has_secure_password

    def email_downcase
        self.email = email.downcase
    end

end
