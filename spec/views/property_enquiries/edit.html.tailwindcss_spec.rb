# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'property_enquiries/edit' do
  let(:property_enquiry) do
    PropertyEnquiry.create!(
      address: 'MyString',
      state: 'MyString'
    )
  end

  before do
    assign(:property_enquiry, property_enquiry)
  end

  it 'renders the edit property_enquiry form' do
    render

    assert_select 'form[action=?][method=?]', property_enquiry_path(property_enquiry), 'post' do
      assert_select 'input[name=?]', 'property_enquiry[address]'

      assert_select 'input[name=?]', 'property_enquiry[state]'
    end
  end
end
