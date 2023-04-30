# frozen_string_literal: true

class PropertyEnquiry < ApplicationRecord
  state_machine initial: :available do
    state :available do
      transition to: :waiting_for_viewing, on: :schedule_viewing
      transition to: :under_offer, on: :submit_offer
    end

    state :under_offer do
      transition to: :sold, on: :accept_offer
      transition to: :available, on: :reject_offer
    end

    state :waiting_for_viewing do
      transition to: :under_offer, on: :submit_offer
      transition to: :available, on: :reset_availability
    end
  end
end
