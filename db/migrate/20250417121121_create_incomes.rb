class CreateIncomes < ActiveRecord::Migration[7.1]
  def change
    create_table :incomes do |t|
      t.references :person, null: false, foreign_key: true
      t.date :date
      t.string :description
      t.decimal :value, precision: 15, scale: 2

      t.timestamps
    end
  end
end
