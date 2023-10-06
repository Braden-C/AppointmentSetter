class CreateAppointmentsdbs < ActiveRecord::Migration[7.0]
  def change
    create_table :appointmentsdbs do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.datetime :date

      t.timestamps
    end
  end
end
