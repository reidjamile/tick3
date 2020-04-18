class TicketList < ApplicationRecord
    has_many :ticket_items, dependent: :destroy
end
