defmodule BreakingBadApiElixir.Config.Tesla do
  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://www.breakingbadapi.com/api/"
  plug Tesla.Middleware.JSON
end
