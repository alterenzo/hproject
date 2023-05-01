# frozen_string_literal: true

class Comment < ApplicationRecord
  belongs_to :property_enquiry
  validates :content, presence: true
  broadcasts_to :property_enquiry
end
