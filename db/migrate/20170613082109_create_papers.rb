class CreatePapers < ActiveRecord::Migration[5.1]
  def change
    create_table :papers do |t|
      t.string :name
      t.text :title
      t.text :description
      t.timestamps
    end
  end
end
