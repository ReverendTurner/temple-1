class SpecialPoliciesController < ApplicationController
  # GET /special_policies
  # GET /special_policies.json
  def index
    @special_policies = SpecialPolicy.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @special_policies }
    end
  end

  # GET /special_policies/1
  # GET /special_policies/1.json
  def show
    @special_policy = SpecialPolicy.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @special_policy }
    end
  end

  # GET /special_policies/new
  # GET /special_policies/new.json
  def new
    @special_policy = SpecialPolicy.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @special_policy }
    end
  end

  # GET /special_policies/1/edit
  def edit
    @special_policy = SpecialPolicy.find(params[:id])
  end

  # POST /special_policies
  # POST /special_policies.json
  def create
    @special_policy = SpecialPolicy.new(params[:special_policy])

    respond_to do |format|
      if @special_policy.save
        format.html { redirect_to @special_policy, notice: 'Special policy was successfully created.' }
        format.json { render json: @special_policy, status: :created, location: @special_policy }
      else
        format.html { render action: "new" }
        format.json { render json: @special_policy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /special_policies/1
  # PUT /special_policies/1.json
  def update
    @special_policy = SpecialPolicy.find(params[:id])

    respond_to do |format|
      if @special_policy.update_attributes(params[:special_policy])
        format.html { redirect_to @special_policy, notice: 'Special policy was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @special_policy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /special_policies/1
  # DELETE /special_policies/1.json
  def destroy
    @special_policy = SpecialPolicy.find(params[:id])
    @special_policy.destroy

    respond_to do |format|
      format.html { redirect_to special_policies_url }
      format.json { head :no_content }
    end
  end
end
