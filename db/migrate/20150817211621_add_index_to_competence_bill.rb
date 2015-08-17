class AddIndexToCompetenceBill < ActiveRecord::Migration
  def change
    add_index :competences, :bill_id
  end
end
