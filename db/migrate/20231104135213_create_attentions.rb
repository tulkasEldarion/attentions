class CreateAttentions < ActiveRecord::Migration[7.1]
  def change
    create_table :attentions do |t|
      t.string :name, index: { unique: true }
      t.date   :datetime
      t.string :reason

      t.references :professional
      t.references :patient
      t.references :service
      t.references :institution

      t.timestamps
    end
  end
end
