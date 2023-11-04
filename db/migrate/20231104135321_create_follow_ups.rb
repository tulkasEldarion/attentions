class CreateFollowUps < ActiveRecord::Migration[7.1]
  def change
    create_table :follow_ups do |t|
      t.references :attentions
      t.date :date

      t.string :observations

      t.timestamps
    end
  end
end
