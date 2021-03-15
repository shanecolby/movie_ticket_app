class CreateShowings < ActiveRecord::Migration[6.0]
  def change
    create_table :showings do |t|
      t.datetime :time
      t.integer :available_seats
      t.integer :movie_id
      t.integer :auditorium_id

      t.timestamps
    end
  end
end
