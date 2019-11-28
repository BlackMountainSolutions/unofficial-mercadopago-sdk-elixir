# UnofficialMercadopagoSdkElixir

Very thin layer to support MercadoPago operations.

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `unofficial_mercadopago_sdk_elixir` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:unofficial_mercadopago_sdk_elixir, "~> 0.1.0"}
  ]
end
```

## Usage

Create preference
```
# Struct properties can be found here https://www.mercadopago.com.ar/developers/es/reference/preferences/resource/
item = %{
  title: "my product",
  unit_price: 100,
  quantity: 1
}

preference = %{
  items: [item]
}

{status, response} = Service.Preference.create(preference)
```

If everything is ok, status == :ok, otherwise it will be :error

## Useful links
- https://www.mercadopago.com.ar/developers/es/guides/payments/web-payment-checkout/introduction/
- https://www.mercadopago.com.ar/developers/es/reference/preferences/resource/

## Documentation

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/unofficial_mercadopago_sdk_elixir](https://hexdocs.pm/unofficial_mercadopago_sdk_elixir).

## Format
The code is being formatted using the default formatter, ie `mix format`

## Test
To run the tests, first you need to rename the file in config/config.sample.exs to config/config.exs and update the access key.
After that, you can run `mix test`

## License
MIT