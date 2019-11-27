defmodule UnofficialMercadopagoSdkElixirTest do
  use ExUnit.Case
  alias UnofficialMercadopagoSdkElixir.Dto, as: Dto
  alias UnofficialMercadopagoSdkElixir.Service, as: Service

  doctest UnofficialMercadopagoSdkElixir

  test "get access key" do
    config = Application.get_env(:unofficial_mercadopago_sdk_elixir, UnofficialMercadopagoSdkElixir, [])
    assert UnofficialMercadopagoSdkElixir.get_access_key() == config[:access_key]
  end

  test "must allow to create preference with service" do
    item = %Dto.Preference.Item{
      title: "my product",
      unit_price: 100,
      quantity: 1
    }

    preference = %Dto.Preference{
      items: [item]
    }

    {status, response} = Service.Preference.create(preference)
    assert status == :ok
    assert response["client_id"] != nil
  end
end