defmodule BreakingBadApiElixir.Api.Characters.Get do
  import BreakingBadApiElixir.Config.Tesla
  import BreakingBadApiElixir.Utils.Request

  def get_all_characters(), do: get("characters") |> handle_request()

  def get_character_by_id(id) do
    get("characters/#{id}") |> handle_request()
  end

  def get_random_character do
    get("character/random") |> handle_request()
  end
end
