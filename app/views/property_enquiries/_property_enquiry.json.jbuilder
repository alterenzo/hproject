# frozen_string_literal: true

json.extract! property_enquiry, :id, :address, :state, :created_at, :updated_at
json.url property_enquiry_url(property_enquiry, format: :json)
