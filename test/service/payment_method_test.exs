defmodule UnofficialMercadopagoSdkElixirTest.PaymentMethodTest do
  use ExUnit.Case
  alias UnofficialMercadopagoSdkElixir.Service, as: Service

  test "list payment methods" do
    {status, response} = Service.PaymentMethod.list(%{})
    assert status == :ok
    assert Kernel.length(response) > 0
  end
end
