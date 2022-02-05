defmodule BreakingBadApiElixir.Utils.Request do
  def handle_request(result) do
    case result do
      {:ok, %Tesla.Env{status: 200, body: []}} -> {:error, "Character not found"}
      {:ok, %Tesla.Env{status: 200, body: body}} -> {:ok, body}
      {:error, _} = error -> error
    end
  end
end
