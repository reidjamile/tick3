class AddVoidToTicketLists < ActiveRecord::Migration[6.0]
  def change
    add_column :ticket_lists, :void, :boolean
  end
end
