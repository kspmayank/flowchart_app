class DropdownEditsController < ApplicationController
  before_action :set_dropdown_edit, only: [:show, :edit, :update, :destroy]

  # GET /dropdown_edits
  # GET /dropdown_edits.json
  def index
    @dropdown_edits = DropdownEdit.all
  end

  # GET /dropdown_edits/1
  # GET /dropdown_edits/1.json
  def show
  end

  # GET /dropdown_edits/new
  def new
    @dropdown_edit = DropdownEdit.new
  end

  # GET /dropdown_edits/1/edit
  def edit
  end

  # POST /dropdown_edits
  # POST /dropdown_edits.json
  def create
    @dropdown_edit = DropdownEdit.new(dropdown_edit_params)

    respond_to do |format|
      if @dropdown_edit.save
        format.html { redirect_to @dropdown_edit, notice: 'Dropdown edit was successfully created.' }
        format.json { render :show, status: :created, location: @dropdown_edit }
      else
        format.html { render :new }
        format.json { render json: @dropdown_edit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dropdown_edits/1
  # PATCH/PUT /dropdown_edits/1.json
  def update
    respond_to do |format|
      if @dropdown_edit.update(dropdown_edit_params)
        format.html { redirect_to @dropdown_edit, notice: 'Dropdown edit was successfully updated.' }
        format.json { render :show, status: :ok, location: @dropdown_edit }
      else
        format.html { render :edit }
        format.json { render json: @dropdown_edit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dropdown_edits/1
  # DELETE /dropdown_edits/1.json
  def destroy
    @dropdown_edit.destroy
    respond_to do |format|
      format.html { redirect_to dropdown_edits_url, notice: 'Dropdown edit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dropdown_edit
      @dropdown_edit = DropdownEdit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dropdown_edit_params
      params.require(:dropdown_edit).permit(:dropdowns_id, :name, :content, :zoomlvl, :approved)
    end
end
