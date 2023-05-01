# frozen_string_literal: true

class Comment < ApplicationRecord
  belongs_to :property_enquiry
  validates :content, presence: true
end
