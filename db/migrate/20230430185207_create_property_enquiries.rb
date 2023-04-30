# frozen_string_literal: true

class CreatePropertyEnquiries < ActiveRecord::Migration[7.0]
  def change
    create_table :property_enquiries do |t|
      t.string :address
      t.string :state

      t.timestamps
    end
  end
end
