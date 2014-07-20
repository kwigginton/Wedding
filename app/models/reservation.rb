class Reservation < ActiveRecord::Base
  validates :name, presence: true
  validates :attendees, :email, presence: true, if: :attending?
  validate  :email_regex

   def email_regex
      if email.present? and not email.match(/\A[^@]+@[^@]+\z/)
        errors.add :email, "This is not a valid email format"
      end
    end
end
