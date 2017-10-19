require "alimento/alimento"

class Food
    attr_accessor :nombre, :proteinas
   
    def initialize(nombre, proteinas)
      @nombre, @proteinas = nombre, proteinas
    end
    
    def to_s
        return @nombre
    end
    
    def get_proteinas
        return @proteinas
    end
    
end