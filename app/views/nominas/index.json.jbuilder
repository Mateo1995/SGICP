json.array!(@nominas) do |nomina|
  json.extract! nomina, :id, :salariobasico, :horasextras, :recargosdiurnos, :recargosnocturnos, :dominicales, :festivos, :comisiones, :diasnotrabajados, :horasnotrabajadas, :empleado_id
  json.url nomina_url(nomina, format: :json)
end