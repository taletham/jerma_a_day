defmodule DailyJermaWeb.LinksLive do
    use DailyJermaWeb, :live_view

    #mount - assign initial state
    def mount(_params, _session, socket) do

        {:ok, socket}
    end

    #render
    def render(assigns) do
        ~H"""
            <div>
                <h1>Links will go here</h1>
            </div>
        """
    end
    #handle_event
end
