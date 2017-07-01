class CreateDropdowns < ActiveRecord::Migration[5.0]
  def change
    create_table :dropdowns do |t|
      t.string :name
      t.text :content
      t.string :zoomlvl
      t.string :approved

      t.timestamps
    end
  end
end
