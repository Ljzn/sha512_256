defmodule Sha512_256 do
  @moduledoc """
  Documentation for `Sha512_256`.
  """

  @doc """
  """
  def hash(m) when is_binary(m) do
    :sha2.hexdigest512_256(m)
  end
end
