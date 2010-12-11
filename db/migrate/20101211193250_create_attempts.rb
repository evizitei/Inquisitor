class CreateAttempts < ActiveRecord::Migration
  def self.up
    create_table :attempts do |t|
      t.integer :quiz_id
      t.integer :student_id
      t.float :percent_correct
      t.text :wrong_answers

      t.timestamps
    end
  end

  def self.down
    drop_table :attempts
  end
end
