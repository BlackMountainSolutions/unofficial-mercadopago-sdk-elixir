defmodule UnofficialMercadopagoSdkElixir.Service.RestClient do
  def post(uri, body) do
    request =
      HTTPoison.post(
        get_url(uri),
        get_encoded(body),
        get_headers(),
        params: %{access_token: get_access_key()}
      )

    request
    |> decode_response
    |> check_for_error
  end

  def get(uri, params) do
    request =
      HTTPoison.get(
        "#{get_url(uri)}?access_token=#{get_access_key()}",
        get_headers()
      )

    request
    |> decode_response
  end

  defp get_access_key() do
    UnofficialMercadopagoSdkElixir.get_access_key()
  end

  defp decode_response(response) do
    case response do
      {:ok, result} -> decode(result.body)
      {:error, error} -> {:error, error.reason}
    end
  end

  defp check_for_error(decoded_response) do
    case decoded_response do
      {:ok, response} ->
        if response["error"] != nil do
          {:error, response["error"]}
        else
          {:ok, response}
        end

      {:error, error} ->
        {:error, error}
    end
  end

  defp get_url(uri) do
    "https://api.mercadopago.com/#{uri}"
  end

  defp get_encoded(struct) do
    Poison.encode!(struct)
  end

  defp decode(struct) do
    case Poison.decode(struct) do
      {:ok, decoded} -> {:ok, decoded}
      {:error, _} -> {:error, :decode_failed}
    end
  end

  defp get_headers() do
    [
      {"User-Agent", "MercadoPago Unofficial Elixir SDK"},
      {"Content-type", "application/json"},
      {"Accept", "application/json"}
    ]
  end
end
