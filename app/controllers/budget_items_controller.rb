class BudgetItemsController < ApplicationController
  before_action :set_budget_item, only: [:show, :edit, :update, :destroy]
  before_action :set_unit
  before_action :set_property
  before_action :authenticate_user!

  # GET /budget_items
  # GET /budget_items.json
  def index
    @budget_items = BudgetItem.all
  end

  # GET /budget_items/1
  # GET /budget_items/1.json
  def show
  end

  # GET /budget_items/new
  def new
    @budget_item = BudgetItem.new
  end

  # GET /budget_items/1/edit
  def edit
  end

  # POST /budget_items
  # POST /budget_items.json
  def create
    @budget_item = @unit.budget_items.create(budget_item_params)

    respond_to do |format|
      if @budget_item.save
        format.html { redirect_to property_unit_url(:property_id => @property.id, :id => @unit.id), notice: 'Budget item was successfully created.' }
        
      else
        format.html { redirect_to property_unit_url(:property_id => @property.id, :id => @unit.id), alert: 'Budget item was NOT created.' }
        
      end
    end
  end

  # PATCH/PUT /budget_items/1
  # PATCH/PUT /budget_items/1.json
  def update
    respond_to do |format|
      if @budget_item.update(budget_item_params)
        format.html { redirect_to unit_path(@unit), notice: 'Budget item was successfully updated.' }
        
      else
        format.html { redirect_to unit_path(@unit), notice: 'Budget item was NOT updated.' }
        
      end
    end
  end

  # DELETE /budget_items/1
  # DELETE /budget_items/1.json
  def destroy
    @budget_item.destroy
    respond_to do |format|
      format.html { redirect_to budget_items_url, notice: 'Budget item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_property
      @property = Property.find(params[:property_id])
    end
    def set_unit
      @unit = Unit.find(params[:unit_id])
    end
    # Use callbacks to share common setup or constraints between actions.
    def set_budget_item
      @budget_item = BudgetItem.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def budget_item_params
      params.require(:budget_item).permit(:qty, :budget_item_id, :product_id, :unit_id, :property_id)
    end
end
