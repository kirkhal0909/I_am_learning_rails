class User < ApplicationRecord
    has_many :microposts, dependent: :destroy
    validates :name, format: {with: /\A[\w]{5,40}\z/,
                              message: "; Accepted characters [a-z, A-Z, _]; length from 5 to 40"}
    validates :email, format: { with: /\A[-\w]{2,100}@[-\w.]{2,100}\z/,
                                message: '; Please, enter valid email (user@domain.com)' }
end
