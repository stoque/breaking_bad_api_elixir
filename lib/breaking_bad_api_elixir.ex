defmodule BreakingBadApiElixir do
  defdelegate get_all_characters(),
    to: BreakingBadApiElixir.Api.Characters.Get,
    as: :get_all_characters
  defdelegate get_character_by_id(id),
    to: BreakingBadApiElixir.Api.Characters.Get,
    as: :get_character_by_id
  defdelegate get_random_character(),
    to: BreakingBadApiElixir.Api.Characters.Get,
    as: :get_random_character

  defdelegate get_all_episodes(),
    to: BreakingBadApiElixir.Api.Episodes.Get,
    as: :get_all_episodes
  defdelegate total_episodes(),
    to: BreakingBadApiElixir.Api.Episodes.Get,
    as: :total_episodes
  defdelegate get_random_episode(),
    to: BreakingBadApiElixir.Api.Episodes.Get,
    as: :get_random_episode
end
