class CreateAnswer < ActiveRecord::Migration[5.1]
  def change
    create_table :answers do |t|
      t.boolean :is_true
      t.string :sign
      t.text :content
      t.timestamps
	  	t.references :question, foreign_key: true
    end
  end
end
