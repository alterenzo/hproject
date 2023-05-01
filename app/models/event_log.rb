# frozen_string_literal: true

class EventLog < ApplicationRecord
  belongs_to :property_enquiry
  broadcasts_to :property_enquiry

  validates :from_state, presence: true
  validates :to_state, presence: true
end
