class CreateQuestions < ActiveRecord::Migration
  def self.up
    create_table :questions do |t|
      t.string :prompt
      t.string :correct_answer
      t.string :distractor_1
      t.string :distractor_2
      t.string :distractor_3
      t.integer :quiz_id

      t.timestamps
    end
  end

  def self.down
    drop_table :questions
  end
end
