defmodule UnofficialMercadopagoSdkElixir.Service.PaymentMethod do
  alias UnofficialMercadopagoSdkElixir.Service.RestClient, as: RestClient

  def list(params) do
    uri = "v1/payment_methods"
    RestClient.get(uri, params)
  end
end
