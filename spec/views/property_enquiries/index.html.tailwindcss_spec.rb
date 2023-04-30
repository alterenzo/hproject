# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'property_enquiries/index' do
  before do
    assign(:property_enquiries, [
             PropertyEnquiry.create!(
               address: 'Address',
               state: 'State'
             ),
             PropertyEnquiry.create!(
               address: 'Address',
               state: 'State'
             )
           ])
  end

  it 'renders a list of property_enquiries' do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new('Address'.to_s), count: 2
    assert_select cell_selector, text: Regexp.new('State'.to_s), count: 2
  end
end
