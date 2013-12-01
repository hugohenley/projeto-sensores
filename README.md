# Projeto de Redes de Sensores - UFF 2013.2
Esse projeto tem como objetivo analisar as regiões de sombra das operadoras de qualquer lugar do mundo.

## Funcionamento

Um aplicativo Android envia os dados de localização (latitude e longitude) e de operadora (nome da operadora)  para essa aplicação web rodando na nuvem. Esses dados são salvos em um banco de dados MySQL para análise e montagem de gráfico através da API Google Maps, identificando as regiões de sombra daquela operadora.

A chamada é feita através dos parâmetros estabelecidos e método HTTP POST.

## Documentação de Uso

API REST

Para criar um novo registro
URL:
Método: POST
Params: phone_model, carrier, signal, latitude, longitude, timestamp

Exemplo: { "phone_model": "Samsung Galaxy S4",
                "carrier": "Vivo",
                "signal": "-58dBm",
                "latitude": "192309213",
                "longitude": "32049244",
                "timestamp": "20131201173518"
                }


Para visualizar todos os registros salvos

URL:
Método: GET