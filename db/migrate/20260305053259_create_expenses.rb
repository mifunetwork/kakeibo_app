class CreateExpenses < ActiveRecord::Migration[8.1]
  def change
    create_table :expenses do |t|
      t.date :date
      t.integer :amount
      t.string :category
      t.string :payment_method
      t.text :memo

      t.timestamps
    end
  end
end
