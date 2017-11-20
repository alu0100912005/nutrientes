require "alimento/alimento"

# @author Nicolangelo Famiglietti
# @note Clase Food (Alimento)
class Food
    # @note Se tiene acceso de lectura y escritura a todos los atributos
    attr_accessor :nombre, :proteinas, :glucidos, :grasas, :n_grupo, :valores, :glucosa
    # @note Clase Comparable
    include Comparable
    # @note Inicializador
    # == Returns:
    # Inicializa nombre, proteinas, glucidos y grasas
    def initialize(nombre, proteinas, glucidos, grasas)
      @nombre, @proteinas, @glucidos, @grasas, @valores = nombre, proteinas, glucidos, grasas
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
        # aux = "#{sum}" + " Kcal"
        return sum
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

# @note Clase Piramide que hereda de Food
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

# @note Clase Aibc heredada de Food para el calculo del aibc del alimento
class Aibc < Food
    # @note Inicializador de la clase heredada
    # == Returns:
    # Inicializa nombre, proteinas, glucidos, grasas y valores
    def initialize(nombre, proteinas, glucidos, grasas, valores, glucosa)
      super(nombre, proteinas, glucidos, grasas)
      @g = valores
      @glu = glucosa
    end
    def aibc
        i = 0
        r = []
        while i < @g.size
            index = 1
            s = []
            while index < @g[i].size
                if @g[i][index] < @g[i][0]
                    s << 0.0
                else
                    s << (((@g[i][index] - @g[i][0]) + (@g[i][index-1] - @g[i][0]))/2)*5
                end
                index = index + 1
            end
        r << s
        i = i + 1
        end
        suma = []
        j = 0
        while j < @g.size
            k = 0
            s = 0
            while k < r[j].size
                s = s + r[j][k]
                k = k + 1
            end
            suma << s
            j = j + 1
        end
        
        i1 = 0
        r1 = []
        while i1 < @glu.size
            index1 = 1
            s1 = []
            while index1 < @glu[i1].size
                if @glu[i1][index1] < @glu[i1][0]
                    s1 << 0.0
                else
                    s1 << (((@glu[i1][index1] - @glu[i1][0]) + (@glu[i1][index1-1] - @glu[i1][0]))/2)*5
                end
                index1 = index1 + 1
            end
        r1 << s1
        i1 = i1 + 1
        end
        aibc_glucosa = []
        j1 = 0
        while j1 < @glu.size
            k1 = 0
            s1 = 0
            while k1 < r1[j1].size
                s1 = s1 + r1[j1][k1]
                k1 = k1 + 1
            end
            aibc_glucosa << s1
            j1 = j1 + 1
        end
        
        ig_alimento = (((suma[0] / aibc_glucosa[0])*100) + ((suma[1]/ aibc_glucosa[1])*100))/2
        
    end
    
end