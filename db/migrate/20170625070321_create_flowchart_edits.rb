class CreateFlowchartEdits < ActiveRecord::Migration[5.0]
  def change
    create_table :flowchart_edits do |t|
      t.references :flowcharts, foreign_key: true
      t.string :name
      t.text :content
      t.string :zoomlvl
      t.string :approved

      t.timestamps
    end
  end
end
