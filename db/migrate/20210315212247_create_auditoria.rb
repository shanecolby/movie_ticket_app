class CreateAuditoria < ActiveRecord::Migration[6.0]
  def change
    create_table :auditoria do |t|
      t.integer :auditorium_number
      t.integer :seating_capacity
      t.integer :theater_id

      t.timestamps
    end
  end
end
