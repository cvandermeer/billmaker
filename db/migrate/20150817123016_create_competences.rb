class CreateCompetences < ActiveRecord::Migration
  def change
    create_table :competences do |t|
      t.string :title
      t.integer :points
      t.integer :level
    end
  end
end
