class AddTtypeToTicketItems < ActiveRecord::Migration[6.0]
  def change
    add_column :ticket_items, :ttype, :string
  end
end
