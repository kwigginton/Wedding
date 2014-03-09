class Guestbookpost < ActiveRecord::Base
  validates :name, :body, :email, presence: true
  validate  :email_regex

   def email_regex
      if email.present? and not email.match(/\A[^@]+@[^@]+\z/)
        errors.add :email, "This is not a valid email format"
      end
    end
end
