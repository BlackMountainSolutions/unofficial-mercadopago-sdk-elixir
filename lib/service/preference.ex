defmodule UnofficialMercadopagoSdkElixir.Service.Preference do
  alias UnofficialMercadopagoSdkElixir.Service.RestClient, as: RestClient
  alias UnofficialMercadopagoSdkElixir.Dto, as: Dto

  def create(%Dto.Preference{} = preference) do
    uri = "checkout/preferences"
    RestClient.post(uri, preference)
  end
end
