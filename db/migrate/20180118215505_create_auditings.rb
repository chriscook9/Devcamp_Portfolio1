class CreateAuditings < ActiveRecord::Migration[5.1]
  def change
    create_table :auditings do |t|
      t.string :userreferences
      t.integer :status
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
