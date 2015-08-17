class CreateCompetences < ActiveRecord::Migration
  def change
    create_table :competences do |t|
      t.integer :title_id
      t.integer :points
      t.integer :level_id
      t.integer :bill_id
    end
  end
end
