class CreateQuestions < ActiveRecord::Migration[6.1]
  def change
    create_table :questions do |t|
      t.text :question_text
      t.string :catagory
      t.integer :version

      t.timestamps
    end
  end
end
