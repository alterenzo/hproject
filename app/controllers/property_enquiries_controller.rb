# frozen_string_literal: true

class PropertyEnquiriesController < ApplicationController
  before_action :set_property_enquiry, only: %i[show edit update destroy]

  # GET /property_enquiries or /property_enquiries.json
  def index
    @property_enquiries = PropertyEnquiry.all
  end

  # GET /property_enquiries/1 or /property_enquiries/1.json
  def show; end

  # GET /property_enquiries/new
  def new
    @property_enquiry = PropertyEnquiry.new
  end

  # GET /property_enquiries/1/edit
  def edit; end

  # POST /property_enquiries or /property_enquiries.json
  def create
    @property_enquiry = PropertyEnquiry.new(property_enquiry_params)

    respond_to do |format|
      if @property_enquiry.save
        format.html do
          redirect_to property_enquiry_url(@property_enquiry), notice: I18n.t('project_enquiry.notice_created')
        end
        format.json { render :show, status: :created, location: @property_enquiry }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @property_enquiry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /property_enquiries/1 or /property_enquiries/1.json
  def update
    respond_to do |format|
      if @property_enquiry.update(property_enquiry_params)
        format.html do
          redirect_to property_enquiry_url(@property_enquiry), notice: I18n.t('project_enquiry.notice_updated')
        end
        format.json { render :show, status: :ok, location: @property_enquiry }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @property_enquiry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /property_enquiries/1 or /property_enquiries/1.json
  def destroy
    @property_enquiry.destroy

    respond_to do |format|
      format.html { redirect_to property_enquiries_url, notice: I18n.t('project_enquiry.notice_deleted') }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_property_enquiry
    @property_enquiry = PropertyEnquiry.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def property_enquiry_params
    params.require(:property_enquiry).permit(:address, :state)
  end
end
