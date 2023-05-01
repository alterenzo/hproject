# frozen_string_literal: true

class PropertyEnquiry < ApplicationRecord
  has_many :comments, dependent: :destroy
  has_many :event_logs, dependent: :destroy

  state_machine initial: :available do
    after_transition all => all do |property_enquiry, transition|
      property_enquiry.log_event(transition)
    end

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

  def human_friendly_state
    self.class.human_state_name(state)
  end

  def human_friendly_events
    state_events.map do |event|
      [self.class.human_state_event_name(event), event]
    end
  end

  def log_event(transition)
    event_logs.create(from_state: self.class.human_state_name(transition.from),
                      to_state: self.class.human_state_name(transition.to))
  end
end
