class Attention < ApplicationRecord

  belongs_to :institution
  belongs_to :professional
  belongs_to :service
  belongs_to :patient

  has_many :follow_ups

  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "datetime", "id", "institution_id", "name", "patient_id", "professional_id", "reason", "service_id", "updated_at"]
  end

  def self.ransackable_associations(auth_object = nil)
    ["institution", "professional", "service", "patient", "follow_ups"]
  end
end
