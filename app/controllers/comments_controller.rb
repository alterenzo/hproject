# frozen_string_literal: true

class CommentsController < ApplicationController
  before_action :set_property_enquiry

  def create
    @property_enquiry.comments.create! params.required(:comment).permit(:content)
    redirect_to @property_enquiry
  end

  private

  def set_property_enquiry
    @property_enquiry = PropertyEnquiry.find(params[:property_enquiry_id])
  end
end
