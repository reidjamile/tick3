class TicketItem < ApplicationRecord
  belongs_to :ticket_list

  validates_presence_of :ttype, :message => 'Please Complete Ticket Item.'

  validates :bxnum, numericality: { greater_than: -0.01 }, allow_nil: true, presence: true
  validates :stnum, numericality: { greater_than: -0.01 }, allow_nil: true, presence: true
  validates :starnum, numericality: { greater_than: -0.01 }, allow_nil: true, presence: true
  validates :lotnum, numericality: { greater_than: -0.01 }, allow_nil: true, presence: true
 

end
