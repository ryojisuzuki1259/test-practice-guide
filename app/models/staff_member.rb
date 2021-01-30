class StaffMember < ApplicationRecord
  def password=(raw_password)
    if raw_password.kind_of?(String)
      self.hashed_password = BCrypt::Password.create(raw_password)
    elsif raw_password.nill?
      self.hashed_password = nil
    end
  end
end
