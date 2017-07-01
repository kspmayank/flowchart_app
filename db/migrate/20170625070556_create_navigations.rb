class CreateNavigations < ActiveRecord::Migration[5.0]
  def change
    create_table :navigations do |t|
      t.string :name
      t.text :link
      t.integer :position

      t.timestamps
    end
  end
end
