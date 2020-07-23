class BudgetItemListsController < ApplicationController
  before_action :set_budget_item_list, only: [:show, :edit, :update, :destroy]

  # GET /budget_item_lists
  # GET /budget_item_lists.json
  def index
    @budget_item_lists = BudgetItemList.all
  end

  # GET /budget_item_lists/1
  # GET /budget_item_lists/1.json
  def show
  end

  # GET /budget_item_lists/new
  def new
    @budget_item_list = BudgetItemList.new
  end

  # GET /budget_item_lists/1/edit
  def edit
  end

  # POST /budget_item_lists
  # POST /budget_item_lists.json
  def create
    @budget_item_list = BudgetItemList.new(budget_item_list_params)

    respond_to do |format|
      if @budget_item_list.save
        format.html { redirect_to @budget_item_list, notice: 'Budget item list was successfully created.' }
        format.json { render :show, status: :created, location: @budget_item_list }
      else
        format.html { render :new }
        format.json { render json: @budget_item_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /budget_item_lists/1
  # PATCH/PUT /budget_item_lists/1.json
  def update
    respond_to do |format|
      if @budget_item_list.update(budget_item_list_params)
        format.html { redirect_to @budget_item_list, notice: 'Budget item list was successfully updated.' }
        format.json { render :show, status: :ok, location: @budget_item_list }
      else
        format.html { render :edit }
        format.json { render json: @budget_item_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /budget_item_lists/1
  # DELETE /budget_item_lists/1.json
  def destroy
    @budget_item_list.destroy
    respond_to do |format|
      format.html { redirect_to budget_item_lists_url, notice: 'Budget item list was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_budget_item_list
      @budget_item_list = BudgetItemList.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def budget_item_list_params
      params.fetch(:budget_item_list, {})
    end
end
