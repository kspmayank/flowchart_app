class FlowchartEditsController < ApplicationController
  before_action :set_flowchart_edit, only: [:show, :edit, :update, :destroy]

  # GET /flowchart_edits
  # GET /flowchart_edits.json
  def index
    @flowchart_edits = FlowchartEdit.all
  end

  # GET /flowchart_edits/1
  # GET /flowchart_edits/1.json
  def show
  end

  # GET /flowchart_edits/new
  def new
    @flowchart_edit = FlowchartEdit.new
  end

  # GET /flowchart_edits/1/edit
  def edit
  end

  # POST /flowchart_edits
  # POST /flowchart_edits.json
  def create
    @flowchart_edit = FlowchartEdit.new(flowchart_edit_params)

    respond_to do |format|
      if @flowchart_edit.save
        format.html { redirect_to @flowchart_edit, notice: 'Flowchart edit was successfully created.' }
        format.json { render :show, status: :created, location: @flowchart_edit }
      else
        format.html { render :new }
        format.json { render json: @flowchart_edit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /flowchart_edits/1
  # PATCH/PUT /flowchart_edits/1.json
  def update
    respond_to do |format|
      if @flowchart_edit.update(flowchart_edit_params)
        format.html { redirect_to @flowchart_edit, notice: 'Flowchart edit was successfully updated.' }
        format.json { render :show, status: :ok, location: @flowchart_edit }
      else
        format.html { render :edit }
        format.json { render json: @flowchart_edit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /flowchart_edits/1
  # DELETE /flowchart_edits/1.json
  def destroy
    @flowchart_edit.destroy
    respond_to do |format|
      format.html { redirect_to flowchart_edits_url, notice: 'Flowchart edit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_flowchart_edit
      @flowchart_edit = FlowchartEdit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def flowchart_edit_params
      params.require(:flowchart_edit).permit(:flowcharts_id, :name, :content, :zoomlvl, :approved)
    end
end
