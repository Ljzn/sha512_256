defmodule Sha512_256Test do
  use ExUnit.Case
  import Sha512_256

  @cases [
    {"The quick brown fox jumps over the lazy dog",
     "dd9d67b371519c339ed8dbd25af90e976a1eeefd4ad3d889005e532fc5bef04d"},
    {<<>>, "c672b8d1ef56ed28ab87c3622c5114069bdd3ad7b8f9737498d0c01ecef0967a"},
    {<<0>>, "10baad1713566ac2333467bddb0597dec9066120dd72ac2dcb8394221dcbe43d"}
  ]

  test "hash" do
    for {left, right} <- @cases do
      assert hash(left) |> Base.encode16(case: :lower) == right
    end
  end
end
