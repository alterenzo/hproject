# frozen_string_literal: true

class CreateEventLogs < ActiveRecord::Migration[7.0]
  def change
    create_table :event_logs do |t|
      t.references :property_enquiry, null: false, foreign_key: true
      t.string :from_state
      t.string :to_state

      t.timestamps
    end
  end
end
