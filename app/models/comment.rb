# frozen_string_literal: true

class Comment < ApplicationRecord
  belongs_to :property_enquiry
  belongs_to :user
  validates :content, presence: true
  broadcasts_to :property_enquiry
end
