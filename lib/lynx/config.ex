defmodule Lynx.Config do
  @default_max_body_length 10_485_760

  def max_body_length do
    Application.get_env(:lynx, LynxWeb.Endpoint, [])[:http_max_body_length] ||
      @default_max_body_length
  end
end
