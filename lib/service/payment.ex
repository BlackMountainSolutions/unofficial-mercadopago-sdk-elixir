defmodule UnofficialMercadopagoSdkElixir.Service.Payment do
  alias UnofficialMercadopagoSdkElixir.Service.RestClient, as: RestClient

  def create(params) do
    uri = "v1/payments"
    RestClient.post(uri, params)
  end

  def get(id) do
    uri = "v1/payments"
    RestClient.get(uri, %{id: id})
  end
end
