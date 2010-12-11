class IndexAttemptsForLookup < ActiveRecord::Migration
  def self.up
    add_index :attempts,:quiz_id
    add_index :attempts,:student_id
  end

  def self.down
    remove_index :attempts,:quiz_id
    remove_index :attempts,:student_id
  end
end
