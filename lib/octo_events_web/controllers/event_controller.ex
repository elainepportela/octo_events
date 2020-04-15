defmodule OctoEventsWeb.EventController do
  use OctoEventsWeb, :controller

  alias OctoEvents.EventRepo

  def create(conn, params) do
    EventRepo.set_insert_event(params)
    conn
    |> put_resp_content_type("text/plain")
    |> send_resp(200, "")
  end

  def show(conn, params) do
    events = EventRepo.get_by_issue_id(params["issue_id"])
    IO.inspect(events)
    render(conn, "show.json", events: events)
  end

end
