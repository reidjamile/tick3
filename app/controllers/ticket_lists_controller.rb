class TicketListsController < ApplicationController
  before_action :set_ticket_list, only: [:show, :edit, :update, :destroy]

  # GET /ticket_lists
  # GET /ticket_lists.json
  def index
    @ticket_lists = TicketList.all
    @ticket_list = TicketList.new
  end

  # GET /ticket_lists/1
  # GET /ticket_lists/1.json
  def show
  end

  # GET /ticket_lists/new
  def new
    @ticket_list = TicketList.new
  end

  # GET /ticket_lists/1/edit
  def edit
  end

  # POST /ticket_lists
  # POST /ticket_lists.json
  def create
    @ticket_list = TicketList.new(ticket_list_params)

    respond_to do |format|
      if @ticket_list.save
        format.html { redirect_to edit_ticket_list_path(@ticket_list), notice: 'Ticket list was successfully created.' }
        format.json { render :edit, status: :created, location: @ticket_list }
      else
        format.html { render :new }
        format.json { render json: @ticket_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ticket_lists/1
  # PATCH/PUT /ticket_lists/1.json
  def update
    respond_to do |format|
      if @ticket_list.update(ticket_list_params)
        format.html { redirect_to @ticket_list, notice: 'Ticket list was successfully updated.' }
        format.json { render :show, status: :ok, location: @ticket_list }
      else
        format.html { render :edit }
        format.json { render json: @ticket_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ticket_lists/1
  # DELETE /ticket_lists/1.json
  def destroy
    @ticket_list.destroy
    respond_to do |format|
      format.html { redirect_to ticket_lists_url, notice: 'Ticket list was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ticket_list
      @ticket_list = TicketList.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ticket_list_params
      params.fetch(:ticket_list, {})
    end
end
