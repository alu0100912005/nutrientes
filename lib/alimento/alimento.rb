require "alimento/alimento"

class Food
    attr_accessor :nombre, :proteinas, :glucidos, :grasas, :n_grupo
   
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

class Piramide < Food
    def initialize(nombre, proteinas, glucidos, grasas, n_grupo)
      super(nombre, proteinas, glucidos, grasas)
      @n_grupo = n_grupo
    end
    def to_s
      @n_grupo
    end
    def devolver_nombre_grupo
        @n_grupo
    end
end