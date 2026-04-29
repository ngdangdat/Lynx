defmodule LynxWeb.Plug.RuntimeParsers do
  @moduledoc false
  @behaviour Plug

  @impl true
  def init(opts) do
    opts
    |> Keyword.put(:length, Lynx.Config.max_body_length())
    |> Plug.Parsers.init()
  end

  @impl true
  defdelegate call(conn, opts), to: Plug.Parsers
end
