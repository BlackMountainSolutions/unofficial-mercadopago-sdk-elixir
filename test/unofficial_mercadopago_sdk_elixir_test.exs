defmodule UnofficialMercadopagoSdkElixirTest do
  use ExUnit.Case
  alias UnofficialMercadopagoSdkElixir.Service, as: Service

  doctest UnofficialMercadopagoSdkElixir

  test "must set access key in config" do
    config = Application.get_env(:unofficial_mercadopago_sdk_elixir, UnofficialMercadopagoSdkElixir, [])
    assert UnofficialMercadopagoSdkElixir.get_access_key() == config[:access_key]
  end

  test "must allow to create preference with service" do
    item = %{
      title: "my product",
      unit_price: 100,
      quantity: 1
    }

    preference = %{
      items: [item]
    }

    {status, response} = Service.Preference.create(preference)
    assert status == :ok
    assert response["client_id"] != nil
  end

  test "must fail if invalid data is sent" do
    {status, _} = Service.Preference.create(nil)
    assert status == :error
  end
end
