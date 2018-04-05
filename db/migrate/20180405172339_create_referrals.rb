class CreateReferrals < ActiveRecord::Migration[5.1]
  def change
    create_table :referrals do |t|
      t.string :message
      t.references :job, foreign_key: true
      t.references :employee, foreign_key: true

      t.timestamps
    end
  end
end
