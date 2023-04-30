# frozen_string_literal: true

require 'rails_helper'

RSpec.describe PropertyEnquiriesController do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/property_enquiries').to route_to('property_enquiries#index')
    end

    it 'routes to #new' do
      expect(get: '/property_enquiries/new').to route_to('property_enquiries#new')
    end

    it 'routes to #show' do
      expect(get: '/property_enquiries/1').to route_to('property_enquiries#show', id: '1')
    end

    it 'routes to #edit' do
      expect(get: '/property_enquiries/1/edit').to route_to('property_enquiries#edit', id: '1')
    end

    it 'routes to #create' do
      expect(post: '/property_enquiries').to route_to('property_enquiries#create')
    end

    it 'routes to #update via PUT' do
      expect(put: '/property_enquiries/1').to route_to('property_enquiries#update', id: '1')
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/property_enquiries/1').to route_to('property_enquiries#update', id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: '/property_enquiries/1').to route_to('property_enquiries#destroy', id: '1')
    end
  end
end
