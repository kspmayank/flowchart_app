class AddWidthpToFlowchartEdits < ActiveRecord::Migration[5.0]
  def change
    add_column :flowchart_edits, :widthp, :string
  end
end
