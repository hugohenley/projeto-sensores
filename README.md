# Projeto de Redes de Sensores - UFF 2013.2
Esse projeto tem como objetivo analisar as regiões de sombra das operadoras de qualquer lugar do mundo.

## Funcionamento

Um aplicativo Android envia os dados de localização (latitude e longitude) e de operadora (nome da operadora)  para essa aplicação web rodando na nuvem. Esses dados são salvos em um banco de dados MySQL para análise e montagem de gráfico através da API Google Maps, identificando as regiões de sombra daquela operadora.

A chamada é feita através dos parâmetros estabelecidos e método HTTP POST.

## Documentação de Uso

### API REST

<strong>Para criar um novo registro</strong>

<strong>URL:</strong> http://projeto-sensores.herokuapp.com/position_details

<strong>Método:</strong> POST

<strong>Params:</strong> phone_model, carrier, signal, latitude, longitude, timestamp

```
Exemplo: {
            "phone_model":
            "Samsung Galaxy S4",
            "carrier": "Vivo",
            "signal": "-58dBm",
            "latitude": "192309213",
            "longitude": "32049244",
            "timestamp": "20131201173518"
        }
```

Se você está utilizando Ruby para fazer a requisição, um exemplo de implementação é:

```
require 'uri'
require 'net/http'
URL = "http://projeto-sensores.herokuapp.com/position_details"
uri = URI(URL)
req = Net::HTTP::Post.new(uri.path)
req.set_form_data(
         "position_details[phone_model]" => "Samsung Galaxy S4",
         "position_details[carrier]" => "VIVO",
         "position_details[signal]" => "-72dBm",
         "position_details[latitude]" => "-22° 54' 10''",
         "position_details[longitude]" => "-43° 12' 27''",
         "position_details[timestamp]" => "20131130094247"
         )
res = Net::HTTP.start(uri.host) do |http|
  http.request(req)
end
```

<strong>Para visualizar todos os registros salvos</strong>

<strong>URL:</strong> http://projeto-sensores.herokuapp.com/position_details.json

<strong>Método:</strong> GET