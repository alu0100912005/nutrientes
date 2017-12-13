# require "./lib/alimento/version"
# require_relative "alimento"
require_relative "lista"

# require "alimento/lista"
# require "./version.rb"
# require_relative 'lista'
# require "lib/alimento"


# require "alimento"
# @author Nicolangelo Famiglietti
# @note Clase Plato
class Plato
    # attr_accessor :name, :vegetal, :fruta, :cereal, :proteina, :aceite, :porciones
    @@lista = ListaDoblementeEnlazada.new() 
    @@lista.insert Food.new("Tomate", 1.0, 3.5, 0.2)
    @@lista.insert Food.new("Plátano", 1.2, 21.4, 0.2) 
    @@lista.insert Food.new("Arroz", 6.8, 77.7, 0.6) 
    @@lista.insert Food.new("Lentejas",  23.5, 52.0, 1.4)
    @@lista.insert Food.new("Aceite de oliva", 0.0,99.6, 0.0)
    @@lista.insert Food.new("Huevo", 14.1,0.0,19.5)
    
    @@medidas = { "cucharadas"=>2,"piezas pequeñas"=>1,"taza"=>3,"cucharón"=>3,"pieza"=>4,"cucharada"=>2 }
    
    def initialize(names, &block)
        @names = names
        @ve = 0
        @fruta = []
        @vegetal = []
        @cereal = []
        @proteina = []
        @aceite = []
        # @porciones = []
        if block_given?  
          if block.arity == 1
            yield self
          else
           instance_eval(&block) 
          end
        end
    end
    
    def to_s
        s = @names
        s << "\n#{'=' * @names.size}\n"
        s << "Composición nutricional:\n"
        s << "\t\tglúcidos proteínas lípidos valor energético\n"
        
        for i in 0..@vegetal.size-1 do
            s << @vegetal[i][0].nombre + ":"
            s << "\t\t%s" % @vegetal[i][0].glucidos
            s << "\t %s" % @vegetal[i][0].proteinas
            s << "\t   %s" % @vegetal[i][0].grasas
            s << "\t   %s\n" % @vegetal[i][1]
        end
        for i in 0..@fruta.size-1 do
            s << @fruta[i][0].nombre + ":"
            s << "\t%s" % @fruta[i][0].glucidos
            s << "\t %s" % @fruta[i][0].proteinas
            s << "\t   %s" % @fruta[i][0].grasas
            s << "\t   %s\n" % @fruta[i][1]
        end
        for i in 0..@cereal.size-1 do
            s << @cereal[i][0].nombre + ":"
            s << "\t\t%s" % @cereal[i][0].glucidos
            s << "\t %s" % @cereal[i][0].proteinas
            s << "\t   %s" % @cereal[i][0].grasas
            s << "\t   %s\n" % @cereal[i][1]
        end
        for i in 0..@proteina.size-1 do
            s << @proteina[i][0].nombre + ":    "
            s << "\t%s" % @proteina[i][0].glucidos
            s << "\t %s" % @proteina[i][0].proteinas
            s << "\t   %s" % @proteina[i][0].grasas
            s << "\t   %s\n" % @proteina[i][1]
        end
        for i in 0..@aceite.size-1 do
            s << @aceite[i][0].nombre + ":"
            s << "%s" % @aceite[i][0].glucidos
            s << "\t %s" % @aceite[i][0].proteinas
            s << "\t   %s" % @aceite[i][0].grasas
            s << "\t   %s\n" % @aceite[i][1]
        end
        s << "Valor energético total"
        s << "\t%f" % @ve
        s
    end  
    
    def vegetal(name, options = {})
        cantidad = 0
        numero = 0
        array = []
        i=0
        alimento = @@lista.detect { |x| name == x.nombre }
        
        if options[:gramos]
           cantidad = options[:gramos]
        elsif options[:porcion]
            #la cadena de porcion la separo en 2
            values = options[:porcion].split(" ", 2)
            #cada parte la guardo en un array
            #2 cucharadas
            #array[0] = 2
            #array[1] = cucharadas
            values.each do |value|
                array[i] = value
                i+=1
            end
            #busco array[1] en el hash de medidas
            @@medidas.each do |key, value|
              if(key == array[1])
                cantidad = value
              end
            end
            #numero es array[0] pasado primero a racional luego a float
            numero = array[0].to_r.to_f
            cantidad = cantidad * numero
        end
        @ve += cantidad*alimento.get_ve
        @vegetal.push([alimento, (cantidad*alimento.get_ve).round(2)])
        
    end
    
    def fruta(name, options = {})
        cantidad = 0
        numero = 0
        array = []
        i=0
        alimento = @@lista.detect { |x| name == x.nombre }
        
        if options[:gramos]
           cantidad = options[:gramos]
        elsif options[:porcion]
            values = options[:porcion].split(" ", 2)
            values.each do |value|
                array[i] = value
                i+=1
            end
            @@medidas.each do |key, value|
              if(key == array[1])
                cantidad = value
              end
            end
            numero = array[0].to_r.to_f
            cantidad = cantidad * numero
        end
        @ve += cantidad*alimento.get_ve
        @fruta.push([alimento, (cantidad*alimento.get_ve).round(2)])
        
    end
    def cereal(name, options = {})
        cantidad = 0
        numero = 0
        array = []
        i=0
        alimento = @@lista.detect { |x| name == x.nombre }
        
        if options[:gramos]
           cantidad = options[:gramos]
        elsif options[:porcion]
            values = options[:porcion].split(" ", 2)
            values.each do |value|
                array[i] = value
                i+=1
            end
            @@medidas.each do |key, value|
              if(key == array[1])
                cantidad = value
              end
            end
            numero = array[0].to_r.to_f
            cantidad = cantidad * numero
        end
        @ve += cantidad*alimento.get_ve
        @cereal.push([alimento, (cantidad*alimento.get_ve).round(2)])
        
    end
    
    def proteina(name, options = {})
        cantidad = 0
        numero = 0
        array = []
        i=0
        alimento = @@lista.detect { |x| name == x.nombre }
        
        if options[:gramos]
           cantidad = options[:gramos]
        elsif options[:porcion]
            values = options[:porcion].split(" ", 2)
            values.each do |value|
                array[i] = value
                i+=1
            end
            @@medidas.each do |key, value|
              if(key == array[1])
                cantidad = value
              end
            end
            numero = array[0].to_r.to_f
            cantidad = cantidad * numero
        end
        @ve += cantidad*alimento.get_ve
        @proteina.push([alimento, (cantidad*alimento.get_ve).round(2)])
    end
    def aceite(name, options = {})
        cantidad = 0
        numero = 0
        array = []
        i=0
        alimento = @@lista.detect { |x| name == x.nombre }
        
        if options[:gramos]
           cantidad = options[:gramos]
        elsif options[:porcion]
            values = options[:porcion].split(" ", 2)
            values.each do |value|
                array[i] = value
                i+=1
            end
            @@medidas.each do |key, value|
              if(key == array[1])
                cantidad = value
              end
            end
            numero = array[0].to_r.to_f
            cantidad = cantidad * numero
        end
        @ve += cantidad*alimento.get_ve
        @aceite.push([alimento, (cantidad*alimento.get_ve).round(2)])
    end
    
end
