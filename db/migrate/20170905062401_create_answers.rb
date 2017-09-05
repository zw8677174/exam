class CreateAnswers < ActiveRecord::Migration[5.1]
  def change
    create_table :answers do |t|
      t.text :content
      t.boolean :correct
      t.timestamps
	  t.references :question, foreign_key: true
    end
  end
end
