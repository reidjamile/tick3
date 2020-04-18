class TicketItemsController < ApplicationController
    before_action :set_ticket_list

    def create 
        @ticket_item = @ticket_list.ticket_items.create(ticket_item_params)

        redirect_to @ticket_list
    end

    def destroy
        @ticket_item = @ticket_list.ticket_items.find(params[:id])
        if @ticket_item.destroy
            flash[:sucess] = "Item discarded"
        else
            flash[:error] = "Item could not be deleted"
        end

        redirect_to @ticket_list
    end


    private


    def set_ticket_list
        @ticket_list = TicketList.find(params[:ticket_list_id])
        
    end

    def ticket_item_params
        params[:ticket_item].permit(:num1, :num2, :num3, :num4, :bxnum, :stnum, :lotnum, :ttype, :starnum)
    end

end
