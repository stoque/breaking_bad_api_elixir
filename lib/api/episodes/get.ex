defmodule BreakingBadApiElixir.Api.Episodes.Get do
  import BreakingBadApiElixir.Config.Tesla
  import BreakingBadApiElixir.Utils.Request

  def get_all_episodes(), do: get("episodes/?series=Breaking+Bad") |> handle_request()

  def total_episodes() do
    {_, body} = get_all_episodes()
    count(body)
  end

  def get_random_episode() do
    {_, body} = get_all_episodes()
    total_episodes = count(body)
    episode_index = :rand.uniform(total_episodes)
    Enum.at(body, episode_index - 1)
  end

  defp count(list), do: count(0, list)
  defp count(accumulator, []), do: accumulator
  defp count(accumulator, [_head | tail]) do
    count(accumulator + 1, tail)
  end
end
