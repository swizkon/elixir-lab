defmodule TypeoniaWeb.ClockLive do
  use TypeoniaWeb, :live_view

  def mount(_params, _session, socket) do
    if connected?(socket) do
      :timer.send_interval(1000, self(), :tick)
    end
    {:ok, assign(socket, time: current_time())}
  end

  def handle_info(:tick, socket) do
    {:noreply, assign(socket, time: current_time())}
  end

  defp current_time do
    DateTime.utc_now() |> Calendar.strftime("%H:%M:%S")
  end

  def render(assigns) do
    ~H"""
    <div class="text-lg font-mono">
      Current Time: <%= @time %>
    </div>
    """
  end
end
