defmodule DailyJermaWeb.BacklogLive do
   use DailyJermaWeb, :live_view

    #render
    def render(assigns) do
        ~H"""
          <Layouts.app flash={@flash}>
            <div>
                <h1>Backlog will go here</h1>
            </div>
            </Layouts.app>
        """
    end

     #mount - assign initial state
    def mount(_params, _session, socket) do

        {:ok, socket}
    end

    #handle_event
end
