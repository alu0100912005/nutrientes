require "alimento/alimento"

class Food
    attr_accessor :nombre, :proteinas, :glucidos, :grasas
   
    def initialize(nombre, proteinas, glucidos, grasas)
      @nombre, @proteinas, @glucidos, @grasas = nombre, proteinas, glucidos, grasas
    end
    
    def to_s
        return @nombre
    end
    
    def get_proteinas
        return @proteinas
    end
    
    def get_glucidos
        return @glucidos
    end
    
    def get_grasas
        return @grasas
    end
    
end