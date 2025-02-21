class CreateTrips < ActiveRecord::Migration[8.0]
  create_enum :statuses, %w[draft in_progress done]
  create_enum :seasons, %w[spring summer fall winter]

  def change
    create_table :trips do |t|
      t.string :name, null: false
      t.decimal :budget_min,  precision: 10, scale: 2, null: false
      t.decimal :budget_max,  precision: 10, scale: 2, null: false
      t.integer :max_duration, null: false
      t.enum :preferred_season, enum_type: :seasons, null: false
      t.enum :status, enum_type: :statuses, null: false

      t.timestamps
    end
  end
end
