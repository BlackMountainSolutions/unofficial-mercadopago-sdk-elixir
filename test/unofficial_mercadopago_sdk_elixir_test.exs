defmodule UnofficialMercadopagoSdkElixirTest do
  use ExUnit.Case

  doctest UnofficialMercadopagoSdkElixir

  test "must set access key in config" do
    config =
      Application.get_env(:unofficial_mercadopago_sdk_elixir, UnofficialMercadopagoSdkElixir, [])

    assert UnofficialMercadopagoSdkElixir.get_access_key() == config[:access_key]
  end
end
