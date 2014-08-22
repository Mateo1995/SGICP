class Nomina < ActiveRecord::Base
  belongs_to :empleado
def self.search(search, page) where(['upper(empleado_id) like ?', 
     "%#{search}%".upcase]).paginate(page: page, per_page: 5).order("empleado_id") 
  end 
  # Validar que los atributos sean obligatorios
	validates :empleado_id, :presence => true
	validates :salariobasico, :presence => true
	validates :horasextras, :presence => true
	validates :recargosdiurnos, :presence => true
	validates :recargosnocturnos, :presence => true
	validates :dominicales, :presence => true
	validates :festivos, :presence => true
	validates :comisiones, :presence => true
	validates :diasnotrabajados, :presence => true
	validates :horasnotrabajadas, :presence => true



end
