class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.references :student, index: true, foreign_key: true
      t.references :course, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
