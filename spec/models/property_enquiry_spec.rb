# frozen_string_literal: true

require 'rails_helper'

RSpec.describe PropertyEnquiry do
  let(:property) { create(:property_enquiry) }

  describe 'states' do
    describe ':available' do
      it 'is an initial state' do
        expect(property).to be_available
      end

      it 'changes to :waiting_for_viewing on :schedule_viewing' do
        property.schedule_viewing!
        expect(property).to be_waiting_for_viewing
      end

      it 'changes to :under_offer on :submit_offer' do
        property.submit_offer!
        expect(property).to be_under_offer
      end

      it 'cannot transition to :sold' do
        expect { property.accept_offer! }.to raise_error(StateMachines::InvalidTransition)
      end
    end

    describe ':under_offer' do
      it 'changes to :sold on :accept_offer' do
        property.submit_offer!
        property.accept_offer!
        expect(property).to be_sold
      end

      it 'changes to :available on :reject_offer' do
        property.submit_offer!
        property.reject_offer!
        expect(property).to be_available
      end
    end

    describe ':waiting_for_viewing' do
      it 'changes to :under_offer on :submit_offer' do
        property.schedule_viewing!
        property.submit_offer!
        expect(property).to be_under_offer
      end

      it 'changes to :available on :reset_availability' do
        property.schedule_viewing!
        property.reset_availability!
        expect(property).to be_available
      end

      it 'cannot transition to :sold' do
        property.schedule_viewing!
        expect { property.accept_offer! }.to raise_error(StateMachines::InvalidTransition)
      end
    end
  end
end
