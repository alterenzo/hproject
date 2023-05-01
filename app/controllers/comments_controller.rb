# frozen_string_literal: true

class CommentsController < ApplicationController
  before_action :set_property_enquiry

  def create
    @property_enquiry.comments.create!(content: comment_content, user: current_user)
    redirect_to @property_enquiry
  end

  private

  def comment_content
    params.required(:comment).permit(:content)[:content]
  end

  def set_property_enquiry
    @property_enquiry = PropertyEnquiry.find(params[:property_enquiry_id])
  end
end
