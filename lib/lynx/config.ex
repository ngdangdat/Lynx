defmodule Lynx.Config do
  @default_max_body_length 500_000_000

  def max_body_length do
    Application.get_env(:lynx, LynxWeb.Endpoint, [])[:http_max_body_length] ||
      @default_max_body_length
  end
end
