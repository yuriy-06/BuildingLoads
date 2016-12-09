class CollectionLayers
	def initialize
		@listLayers = []
		puts "Введите количество слоев"
		@number_layers = gets.chomp.to_i
		@number_layers.times { |i| i = Layer.new; @listLayers << i }
	end
	def addLayer  # вызов selfObject.add 
		@listLayers << Layer.new
	end
	def out
		@listLayers.each{|i| i.out}
	end
end

class Floor
	def initialize
		@msg = "Нагрузки на перекрытие/покрытие"
		@c = CollectionLayers.new
		puts @msg
		@c.out
	end
end

class Layer
	def initialize
		puts "Введите имя слоя, пожалуста"
		@name = gets.chomp
		puts "Толщина слоя, в метрах"
		@h = gets.chomp
		puts "Плотность, т/м3"
		@ro = gets.chomp
		puts "Gamma_F"
		@gamma_f = gets.chomp
		@p = @ro.to_f * @h.to_f * @gamma_f.to_f
		#self.out
	end
	def out
		puts "расчетная нагрузка на " + @name
		string_tex = @ro + " times " + @h + " times " + @gamma_f
		puts "p = " + string_tex + " = " + @p.to_s + " тс/м^2"
	end
end
		