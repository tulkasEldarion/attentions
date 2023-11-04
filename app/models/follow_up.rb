class FollowUp < ApplicationRecord

  belongs_to :attention

  def self.ransackable_attributes(auth_object = nil)
    ["attentions_id", "created_at", "date", "id", "observations", "updated_at"]
  end

  def self.ransackable_associations(auth_object = nil)
    ["attention"]
  end
end
