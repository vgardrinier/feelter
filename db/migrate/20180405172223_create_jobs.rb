class CreateJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :description
      t.integer :salary
      t.references :recruiter, foreign_key: true

      t.timestamps
    end
  end
end
