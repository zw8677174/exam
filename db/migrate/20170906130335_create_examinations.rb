class CreateExaminations < ActiveRecord::Migration[5.1]
  def change
    create_table :examinations do |t|
			t.text :name
			t.text :code
	  	t.references :paper, foreign_key: true
      t.timestamps
    end
  end
end
