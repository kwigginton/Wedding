class Reservation < ActiveRecord::Base
  validates :name, :email, presence: true
  validates :attendees,  presence: true, if: :attending?
  validate  :email_regex

   def email_regex
      if email.present? and not email.match(/\A[^@]+@[^@]+\z/)
        errors.add :email, "This is not a valid email format"
      end
    end
end
