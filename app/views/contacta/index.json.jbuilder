json.array!(@contacta) do |contactum|
  json.extract! contactum, :id, :cpfCliente, :cnpjRestaurante
  json.url contactum_url(contactum, format: :json)
end
