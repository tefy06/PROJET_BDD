class CreateGraduations < ActiveRecord::Migration[6.0]
  def change
    create_table :graduations do |t|
      t.references :doctor, foreign_key: true
      t.references :specialty, foreign_key: true
      t.timestamps
    end
  end
end
