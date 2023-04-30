# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'property_enquiries/show' do
  before do
    assign(:property_enquiry, PropertyEnquiry.create!(
                                address: 'Address',
                                state: 'State'
                              ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/State/)
  end
end