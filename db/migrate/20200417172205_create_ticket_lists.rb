class CreateTicketLists < ActiveRecord::Migration[6.0]
  def change
    create_table :ticket_lists do |t|

      t.timestamps
    end
  end
end
