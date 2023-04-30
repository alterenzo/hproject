# frozen_string_literal: true

class AddConstraintToPropertyStatus < ActiveRecord::Migration[7.0]
  def change
    add_check_constraint :property_enquiries, "state IN ('available', 'under_offer', 'waiting_for_viewing', 'sold')",
                         name: 'valid_state'
  end
end
