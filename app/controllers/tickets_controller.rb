class TicketsController < ApplicationController
    
    def new
        @ticket = Ticket.new
    end

    def create
        Ticket.create(ticket_params)
        redirect_to tickets_path
    end
    
    def index
        @tickets = Ticket.all
    end
    
    def show 
        @ticket = Ticket.find(params[:id])
    end

    def edit
        @ticket = Ticket.find(params[:id])
    end

    def update
        @ticket = Ticket.find(params[:id])
        @ticket.update(ticket_params)
        redirect_to @ticket
    end
    
    def destroy
        @ticket = Ticket.find(params[:id])
        @ticket.destroy
        redirect_to tickets_path
    end
    
    def ticket_params
        params.require(:ticket).permit(:traveler_id, :airline_id)
    end
end