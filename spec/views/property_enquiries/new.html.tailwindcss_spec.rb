# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'property_enquiries/new' do
  before do
    assign(:property_enquiry, PropertyEnquiry.new(
                                address: 'MyString',
                                state: 'available'
                              ))
  end

  it 'renders new property_enquiry form' do
    render

    assert_select 'form[action=?][method=?]', property_enquiries_path, 'post' do
      assert_select 'input[name=?]', 'property_enquiry[address]'
    end
  end
end
