class Customer < ApplicationRecord
  before_save :downcase_email
  def downcase_email
    self.email = email.downcase
    self.email
  end
   has_many :chintus
  validates :username, presence: true,
                 uniqueness: { case_sensitive: false },
                 length: { minimum: 3, maximum: 25 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true,
                 uniqueness: { case_sensitive: false },
                 length: { maximum: 105 },
                 format: { with: VALID_EMAIL_REGEX }
   has_secure_password
end
