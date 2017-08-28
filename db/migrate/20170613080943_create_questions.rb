class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
      t.text :title
      t.string :tag
      t.text :body
      t.text :answer
      t.timestamps
	  	t.references :paper, foreign_key: true
    end
  end
end
