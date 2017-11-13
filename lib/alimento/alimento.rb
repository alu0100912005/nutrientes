require "alimento/alimento"

class Food
    # @note Se tiene acceso de lectura y escritura a todos los atributos
    attr_accessor :nombre, :proteinas, :glucidos, :grasas, :n_grupo
    # @note Clase Comparable
    include Comparable
    # @note Inicializador
    # == Returns:
    # Inicializa nombre, proteinas, glucidos y grasas
    def initialize(nombre, proteinas, glucidos, grasas)
      @nombre, @proteinas, @glucidos, @grasas = nombre, proteinas, glucidos, grasas
    end
    # @note Método to_s
    # == Returns:
    #Devuelve los datos del alimento formateado
    def to_s
        s="#{@nombre}: #{@proteinas} · #{@glucidos} · #{@grasas}"
        return s
    end
    # @note Método get_ve
    # == Returns:
    #Devuelve el valor en calorias del alimento
    def get_ve
        sum = (@proteinas * 4) + (@glucidos * 4) + (@grasas * 9)
        aux = "#{sum}" + " Kcal"
        return aux
    end
    
    # @note Metodo comparable de la clase Food
    # == Returns:
    # 0 Si es igual
    # 1 Si es mayor
    # -1 Si es menor
    def <=>(other)
        if @proteinas == other.proteinas
            if @glucidos == other.glucidos
                if @grasas == other.grasas
                    return 0
                    elsif
                        grasas > other.grasas
                        return 1
                    else
                        return -1
                end
            elsif
                glucidos > other.glucidos
                return 1
            else
                return -1
            end
        elsif
            proteinas > other.proteinas
            return 1
        else
            return -1
        end
    end
end

class Piramide < Food
    # @note Inicializador de la clase heredada
    # == Returns:
    # Inicializa nombre, proteinas, glucidos, grasas y nombre de grupo
    def initialize(nombre, proteinas, glucidos, grasas, n_grupo)
      super(nombre, proteinas, glucidos, grasas)
      @n_grupo = n_grupo
    end
    # @note Método to_s
    # == Returns:
    #Devuelve el nombre del grupo al que pertenece el alimento
    def to_s
      @n_grupo
    end
    # @note Método devolver_nombre_grupo
    # == Returns:
    #Devuelve el nombre del grupo al que pertenece el alimento
    def devolver_nombre_grupo
        @n_grupo
    end
end