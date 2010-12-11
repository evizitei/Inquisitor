class IndexQuestionsOnQuizId < ActiveRecord::Migration
  def self.up
    add_index :questions,:quiz_id
  end

  def self.down
    remove_index :questions,:quiz_id
  end
end
