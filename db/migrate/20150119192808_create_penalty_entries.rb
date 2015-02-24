class CreatePenaltyEntries < ActiveRecord::Migration
  def change
    create_table :penalty_entries do |t|
      t.references :user, index: true
      t.references :penalty, index: true
      t.date :date

      t.timestamps
    end
  end
end
