defmodule UnofficialMercadopagoSdkElixir do
  @moduledoc """
  Documentation for UnofficialMercadopagoSdkElixir.
  """

  @defaults [
    access_key: ""
  ]

  def get_access_key() do
    config = Application.get_env(:unofficial_mercadopago_sdk_elixir, __MODULE__, @defaults)
    config[:access_key]
  end
end
