class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
      t.text :content
      t.timestamps
	  	t.references :paper, foreign_key: true
    end
  end
end
