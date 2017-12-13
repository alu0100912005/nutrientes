require "spec_helper"
require "./lib/alimento/alimento"
require "./lib/alimento/lista"
require 'benchmark'

# @author Nicolangelo Famiglietti
# @note Clase heredada de Food
# == Returns:
# Pruebas con el AIBC de alimento imperativo

RSpec.describe Aibc do
  before :all do
    valores_yo = [[6.7,6.5,6.8,6.9,7.0,7.1,6.9,6.9,6.9,6.7,6.9,7.3,7.0,7.0,7.2,7.1,6.8,7.2,7.3,7.0,6.8,6.7,6.8,6.7,6.9],
              [ 4.6,4.8,5.3,5.6,6.1,6.5,6.6,7.0,7.0,6.8,6.4,6.3,6.1,6.1,6.2,6.0,6.1,6.1,6.2,6.3,6.4,6.1,6.1,5.7,5.9]]
    glucosa = [[4.9,5.3,5.9,6.7,7.2,7.6,8.0,8.2,8.2,8.4,8.3,8.3,8.0,7.5,7.1,6.8,6.8,6.9,6.8,6.3,6.2,6.3,6.2,6.3,6.1],
                  [6.3,5.4,5.6,5.7,6.5,7.4,7.9,7.4,7.7,7.9,7.9,7.8,7.8,7.8,8.0,8.5,9.4,10.8,10.5,9.1,8.9,8.3,7.7,7.6,7.5]]
    @yogurt = Aibc.new("Yogurt"     , 3.8 , 4.9,  3.8, valores_yo, glucosa)
  end
  
  context "#Aibc - Imperativo" do
      it "Comprobando aibc del yogurt" do
        expect(@yogurt.aibc).to eq(52.21619897959183)
      end
  end
end


# @author Nicolangelo Famiglietti
# @note Clase heredada de Food
# == Returns:
# Diferentes pruebas para Piramide
RSpec.describe Piramide do
  before :all do
    @huevo_frito = Piramide.new("Huevo frito", 14.1, 0.0, 19.5, "Huevos, lacteos y helados")
    @leche  = Piramide.new("Leche vaca" , 3.3 , 4.8,  3.2, "Huevos, lacteos y helados")
    @yogurt = Piramide.new("Yogurt"     , 3.8 , 4.9,  3.8, "Huevos, lacteos y helados")
  end
  
  context "#Piramide alimenticia" do
    # it "Los alimentos ahora tienen un nombre de grupo" do
    #   expect(@huevo_frito.to_s).to eq("Huevos, lacteos y helados")
    # end
    it "Comprobamos que responde a metodo propio de la clase (Food)" do
      expect(@huevo_frito.respond_to?:get_ve).to eq(true)
    end
    it "Comprobamos que es una instancia de la clase (Piramide)" do
      expect(@huevo_frito.instance_of?Piramide).to eq(true)
    end
    it "Comprobamos que NO debe ser instancia de la clase (Food)" do 
      expect(@huevo_frito.instance_of?Food).to eq(false) 
    end
    it "Comprobamos que pertenece a la jerarquía de clase Food" do
        expect(@huevo_frito.is_a?Food).to eq(true)
    end
    
    it "Comprobamos que pertenece a la jerarquía de clase Object" do
        expect(@huevo_frito.is_a?Object).to eq(true)
    end
    
    it "Comprobamos que pertenece a la jerarquía de clase BasicObject" do
        expect(@huevo_frito.is_a?BasicObject).to eq(true)
    end
  end
end

# @note Nodo
# == Returns:
# Pruebas para la clase Nodo
RSpec.describe Node do
  before :all do
    @nodo = Node.new("Valor",nil)
    @nodo1 = Node.new(10, @nodo)
  end
  context "#Nodo" do
        it "Debe existir un Nodo de la lista con sus datos, su anterior y su siguiente" do
            expect(@nodo[:value]).to eq("Valor")
            expect(@nodo[:next]).to eq(nil)
            expect(@nodo[:prev]).to eq(nil)
        end 
        it "Debe tener un siguiente" do
          expect(@nodo1.next).to eq(@nodo)
        end
    end
end
# @note Lista doblemente enlazada
# == Returns:
# Pruebas para la clase lista doblemente enlazada
RSpec.describe ListaDoblementeEnlazada do
  before :all do
    @list = ListaDoblementeEnlazada.new()
    @elemento = %w(1 2 3 4 5)
    # Huevos, lacteos y helados
    @huevo_frito = Piramide.new("Huevo frito", 14.1, 0.0, 19.5, "Huevos, lacteos y helados")
    @leche  = Piramide.new("Leche vaca" , 3.3 , 4.8,  3.2, "Huevos, lacteos y helados")
    @yogurt = Piramide.new("Yogurt      "     , 3.8 , 4.9,  3.8, "Huevos, lacteos y helados")
    @lista_g1 = ListaDoblementeEnlazada.new()
    
    @lista = ListaDoblementeEnlazada.new()
    @lista.insert(@huevo_frito.get_ve)
    @lista.insert(@leche.get_ve)
    @lista.insert(@yogurt.get_ve)
    
    @lista_to_sort2 = ListaDoblementeEnlazada.new()
    @lista_to_sort1 = ListaDoblementeEnlazada.new()
    @lista_to_sort = ListaDoblementeEnlazada.new()
    @lista_to_sort.insert(@huevo_frito)
    @lista_to_sort.insert(@leche)
    @lista_to_sort.insert(@yogurt)
    
    @lista_to_sort1.insert(@huevo_frito.get_ve)
    @lista_to_sort1.insert(@leche.get_ve)
    @lista_to_sort1.insert(@yogurt.get_ve)
    
    @lista_to_sort2.insert(@huevo_frito.get_ve)
    @lista_to_sort2.insert(@leche.get_ve)
    @lista_to_sort2.insert(@yogurt.get_ve)

    ###################
    # Carnes y derivados 
    @cerdo = Piramide.new("Cerdo     ", 21.5, 0.0, 6.3, "Carnes y Derivados")
    @ternera = Piramide.new("Ternera", 21.1, 0.0, 3.1, "Carnes y Derivados")
    @pollo = Piramide.new("Pollo     ", 20.6, 0.0, 5.6, "Carnes y Derivados")
    @lista_g2 = ListaDoblementeEnlazada.new()
    @lista_g2.insert(@cerdo)
    @lista_g2.insert(@ternera)
    @lista_g2.insert(@pollo)
    ###################
    # Pescados y mariscos
    @bacalao = Piramide.new("Bacalao", 17.7, 0.0, 0.4, "Pescados y mariscos")
    @atun = Piramide.new("Atun    ", 21.5, 0.0, 15.5, "Pescados y mariscos")
    @salmon = Piramide.new("Salmon   ", 19.9, 0.0, 13.6, "Pescados y mariscos")
    @lista_g3 = ListaDoblementeEnlazada.new()
    @lista_g3.insert(@bacalao)
    @lista_g3.insert(@atun)
    @lista_g3.insert(@salmon)
    ###################
  end
  context "#Grupos de alimentos" do
    it "Debe poder insertar en una lista un alimento completo" do
      expect(@lista_g1.insert(@huevo_frito)).to eq(true)
      expect(@lista_g1.insert(@yogurt)).to eq(true)
      expect(@lista_g1.insert(@leche)).to eq(true)
    end
    # it "Existe un metodo to_s para el formateado del menu" do
      # expect(@lista_g1.to_s).to eq("Huevos, lacteos y helados\n\t\t\tProteinas Glucidos Lipidos\n\tHuevo frito \t14.1  \t   0.0      19.5\n\tYogurt       \t3.8  \t   4.9      3.8\n\tLeche vaca \t3.3  \t   4.8      3.2\n")
      # puts @lista_g1.to_s
    # end
    # it "Carnes y derivados" do
    #   puts @lista_g2.to_s  
    # end
    # it "Pescados y mariscos" do
    #   puts @lista_g3.to_s  
    # end
    
    it "Se obtiene un nuevo array ordenado usando bucles for" do
      expect(@lista_to_sort.sortFor(@lista_to_sort)).to eq([61.2, 69.0, 231.9])
    end
    it "Se obtiene un nuevo array ordenado usando metodo each" do
      expect(@lista_to_sort2.sortEach(@lista_to_sort2)).to eq([61.2, 69.0, 231.9])
    end
    it "Se obtiene un nuevo array ordenado usando metodo sort" do
      expect(@lista_to_sort1.sort).to eq([61.2, 69.0, 231.9])
    end
    it "Clase Benchmark" do
      Benchmark.bm do |x|
        x.report("for: ") { @lista_to_sort.sortFor(@lista_to_sort) }
        x.report("each:") { @lista_to_sort2.sortEach(@lista_to_sort2) }
        x.report("sort:") { @lista_to_sort1.sort }
      end
    end
    it "Extrae por la cabeza de la lista - G1" do
      expect(@lista_g1.extract_head).not_to be nil
    end
    # it "Extrae por la cola de la lista - G1" do
    #   expect(@lista_g1.extract_tail).not_to be nil
    # end
  end
  context "#Lista de enteros" do
    it "Debe existir una Lista con su cabeza" do
      expect(@list.head).to eq(nil)
    end
    it "Debe existir una Lista con su cola" do
      expect(@list.tail).to eq(nil)
    end
    it "Se puede insertar un elemento en la Lista" do
      expect(@list.insert(1)).to eq(true)
    end
    it "Se pueden insertar varios elementos en la Lista" do
      i=0
      while i < @elemento.size-1
        expect(@list.insert(@elemento[i])).to eq(true)
        i+=1
      end
    end
    it "Se extrae el primer elemento de la Lista" do
      expect(@list.extract_head.value).to eq(1)
    end
    it "Se extrae el ultimo elemento de la Lista" do
      expect(@list.extract_tail).to eq("4")
    end
  end
  context "#Enumerable en Lista de alimentos" do
    it "Valor energetico max" do
      expect(@lista.max).to eq(231.9)
    end
    it "Valor energetico min" do
      expect(@lista.min).to eq(61.2)
    end
    it 'Lista ordenada' do
      expect(@lista.sort).to eq([61.2, 69.0, 231.9])
    end
    it 'Suma total del valor energetico de la lista' do
      expect(@lista.inject(0){|sum,x| sum + x }).to eq(362.1)
    end
  end
  
  # @note Lista doblemente enlazada enumerable
  # == Returns:
  # MIN MAX y lista ordenada
  context '#Lista doblemente enlazada enumerable' do
    before :each do
        @l1 = ListaDoblementeEnlazada.new()
        @l1.insert(1)
        @l1.insert(3)
        @l1.insert(2)
    end
    it 'Metodo min' do
      expect(@l1.min).to eq(1)
    end
    it 'Metodo max' do
      expect(@l1.max).to eq(3)
    end
    it 'Metodo sort' do
      expect(@l1.sort).to eq([1, 2, 3])
    end
    it 'Metodo map' do
      expect(@l1.map { |i| i+i }).to eq([2,6,4])
    end
    it 'Metodo suma' do
      expect(@l1.inject(0){|sum,x| sum + x }).to eq(6)
    end
  end
end

# @note Lista doblemente enlazada enumerable
# == Returns:
# MIN MAX y lista ordenada
RSpec.describe Food do
  context "#Clase Alimento" do
    it "tiene un numero de version" do
      expect(Alimento::VERSION).not_to be nil
      
    end
    before :each do
      #leche  = Food.new("Leche vaca" , 3.3 , 4.8,  3.2)
      # cerdo  = Food.new("Cerdo"      , 21.5, 0.0,  6.3)
      @huevo  = Food.new("Huevo frito", 14.1, 0.0, 19.5)
      @yogurt = Food.new("Yogurt"     , 3.8 , 4.9,  3.8)
      @titulo = "Lentejas con arroz, salsa de tomate, huevo y pl´atano a la plancha"
    end
    
    it "debe existir un nombre para el alimento" do
      expect(@huevo.nombre).not_to be nil
    end
    
    it "debe existir la cantidad de proteinas del alimento en gramos" do
      expect(@huevo.proteinas).not_to be nil
    end
    
    it "debe existir la cantidad de glucidos del alimento en gramos" do
      expect(@huevo.glucidos).not_to be nil
    end
  
    it "debe existir la cantidad de grasas del alimento en gramos" do
      expect(@huevo.grasas).not_to be nil
    end
    
    it "existe un metodo para obtener el nombre del alimento" do
      expect(@huevo.nombre).to eq("Huevo frito")
    end
    
    it "existe un metodo para obtener la cantidad de protinas de un alimento" do
      expect(@huevo.proteinas).to eq(14.1)
    end
    
    it "existe un metodo para obtener la cantidad de glucidos de un alimento" do
      expect(@huevo.glucidos).to eq(0.0)
    end
    
    it "existe un metodo para obtener la cantidad de grasas de un alimento" do
      expect(@huevo.grasas).to eq(19.5)
    end
    
    # it "tiene un metodo para obtener alimento formateado" do
    #   expect(@huevo.to_s).to eq("Huevo frito: 14.1 · 0.0 · 19.5")
    # end
    
    it "tiene un metodo para calcular valor energetico" do
      expect(@huevo.get_ve).to eq(231.9)
    end
    
  end
  context "#Clase Alimento Comparable:" do
      huevo  = Food.new("Huevo frito", 14.1, 0.0, 19.5)
      leche  = Food.new("Leche vaca" , 3.3 , 4.8,  3.2)
      it "Comparando operador <" do
        expect(leche<huevo).to eq (true)
      end
      it "Comparando operador >" do
        expect(leche>huevo).to eq (false)
      end
      it "Comparando operador == para que falle" do
        expect(leche==huevo).to eq (false)
      end
      it "Comparando operador == para que acierte" do
        expect(huevo==huevo).to eq (true)
      end
      it "Ordena los alimentos" do
        expect([leche, huevo].sort).not_to be nil
      end
  end
end