class CreateDropdownEdits < ActiveRecord::Migration[5.0]
  def change
    create_table :dropdown_edits do |t|
      t.references :dropdowns, foreign_key: true
      t.string :name
      t.text :content
      t.string :zoomlvl
      t.string :approved

      t.timestamps
    end
  end
end
