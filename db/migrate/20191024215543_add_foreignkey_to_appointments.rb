class AddForeignkeyToAppointments < ActiveRecord::Migration[6.0]
  def change
  	add_reference :appointments, :city, foreign_key: true
  end
end
