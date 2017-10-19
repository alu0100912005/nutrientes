require "alimento/alimento"

class Food
    attr_accessor :nombre
   
    def initialize(nombre)
      @nombre = nombre
    end
    
    def to_s
        return @nombre
    end
    
end