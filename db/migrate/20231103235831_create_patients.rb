# frozen_string_literal: true

class CreatePatients < ActiveRecord::Migration[7.1]
  def change
    create_table :patients do |t|
      t.string :first_name
      t.string :last_name
      t.string :id_number, unique: true
      t.string :phone

      t.timestamps
    end
  end
end
