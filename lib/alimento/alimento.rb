require "alimento/alimento"

class Food
    attr_accessor :nombre, :proteinas, :glucidos, :grasas
   
    def initialize(nombre, proteinas, glucidos, grasas)
      @nombre, @proteinas, @glucidos, @grasas = nombre, proteinas, glucidos, grasas
    end
    
    def to_s
        s="#{@nombre}: #{@proteinas} · #{@glucidos} · #{@grasas}"
        return s
    end
    
    def get_ve
        sum = (@proteinas * 4) + (@glucidos * 4) + (@grasas * 9)
        aux = "#{sum}" + " Kcal"
        return aux
    end
    
end