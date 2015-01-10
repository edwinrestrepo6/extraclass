class CreateContents < ActiveRecord::Migration
  def change
    create_table :contents do |t|
      t.string :title
      t.text :content
      t.integer :status

      t.timestamps null: false
    end
  end
end
