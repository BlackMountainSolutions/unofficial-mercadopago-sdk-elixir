defmodule UnofficialMercadopagoSdkElixir.Service.Preference do
  alias UnofficialMercadopagoSdkElixir.Service.RestClient, as: RestClient

  def create(preference) do
    uri = "checkout/preferences"
    RestClient.post(uri, preference)
  end
end
