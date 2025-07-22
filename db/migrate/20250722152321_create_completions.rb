class CreateCompletions < ActiveRecord::Migration[8.0]
  def change
    create_table :completions do |t|
      t.references :habit, null: false, foreign_key: true
      t.datetime :completed_at, null: false

      t.timestamps
    end
  end
end
