class CreateTicketItems < ActiveRecord::Migration[6.0]
  def change
    create_table :ticket_items do |t|
      t.string :num1
      t.string :num2
      t.string :num3
      t.string :num4
      t.string :bxnum
      t.string :stnum
      t.string :lotnum
      t.string :starnum
      t.references :ticket_list, null: false, foreign_key: true

      t.timestamps
    end
  end
end
