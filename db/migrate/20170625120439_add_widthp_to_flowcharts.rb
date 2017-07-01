class AddWidthpToFlowcharts < ActiveRecord::Migration[5.0]
  def change
    add_column :flowcharts, :widthp, :string
  end
end
