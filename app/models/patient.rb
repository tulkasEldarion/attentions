class Patient < ApplicationRecord

  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "first_name", "id", "id_number", "id_value", "last_name", "phone", "updated_at"]
  end

end
