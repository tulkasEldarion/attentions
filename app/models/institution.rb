class Institution < ApplicationRecord

  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "name", "id"]
  end
end
