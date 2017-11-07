require "spec_helper"
require "./lib/alimento/alimento"
require "./lib/alimento/lista"


RSpec.describe Piramide do
  before :all do
    @huevo_frito = Piramide.new("Huevo frito", 14.1, 0.0, 19.5, "Huevos, lacteos y helados")
    @leche  = Piramide.new("Leche vaca" , 3.3 , 4.8,  3.2, "Huevos, lacteos y helados")
    @yogurt = Piramide.new("Yogurt"     , 3.8 , 4.9,  3.8, "Huevos, lacteos y helados")
    
  end
  
  context "#Piramide alimenticia" do
    it "Tiene un nombre de grupo" do
      @huevo_frito.to_s
    end
    it "Valor de proteina del huevo" do
      expect(@huevo_frito.proteinas).to eq(14.1)
    end
  end
end

RSpec.describe Node do
  before :all do
    @nodo = Node.new(0,nil)
  end
  context "#Nodo" do
        it "Debe existir un Nodo de la lista con sus datos, su anterior y su siguiente" do
            expect(@nodo[:value]).to eq(0)
            expect(@nodo[:next]).to eq(nil)
            expect(@nodo[:prev]).to eq(nil)
        end 
    end
end

RSpec.describe ListaDoblementeEnlazada do
  before :all do
    @list = ListaDoblementeEnlazada.new()
    @elemento = %w(1 2 3 4 5)
    # Huevos, lacteos y helados
    @huevo_frito = Piramide.new("Huevo frito", 14.1, 0.0, 19.5, "Huevos, lacteos y helados")
    @leche  = Piramide.new("Leche vaca" , 3.3 , 4.8,  3.2, "Huevos, lacteos y helados")
    @yogurt = Piramide.new("Yogurt"     , 3.8 , 4.9,  3.8, "Huevos, lacteos y helados")
    
    @lista_g1 = ListaDoblementeEnlazada.new()
    @lista_g1.insert(@huevo_frito)
    @lista_g1.insert(@yogurt)
    @lista_g1.insert(@leche)
    ###################
    # Carnes y derivados 
    @cerdo = Piramide.new("Cerdo", 21.5, 0.0, 6.3, "Carnes y Derivados")
    @ternera = Piramide.new("Ternera", 21.1, 0.0, 3.1, "Carnes y Derivados")
    @pollo = Piramide.new("Pollo", 20.6, 0.0, 5.6, "Carnes y Derivados")
    @lista_g2 = ListaDoblementeEnlazada.new()
    @lista_g2.insert(@cerdo)
    @lista_g2.insert(@ternera)
    @lista_g2.insert(@pollo)
    ###################
    # Pescados y mariscos
    @bacalao = Piramide.new("Bacalao", 17.7, 0.0, 0.4, "Pescados y mariscos")
    @atun = Piramide.new("Atun", 21.5, 0.0, 15.5, "Pescados y mariscos")
    @salmon = Piramide.new("Salmon", 19.9, 0.0, 13.6, "Pescados y mariscos")
    @lista_g3 = ListaDoblementeEnlazada.new()
    @lista_g3.insert(@bacalao)
    @lista_g3.insert(@atun)
    @lista_g3.insert(@salmon)
    ###################
  end
  context "Grupos de alimentos" do
    it "Huevos, lacteos y helados" do
      @lista_g1.to_s  
    end
    it "Carnes y derivados" do
      @lista_g2.to_s  
    end
    it "Pescados y mariscos" do
      @lista_g3.to_s  
    end
  
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
      expect(@list.extraer_final).to eq("4")
    end
  end
end

RSpec.describe Food do
  
  it "tiene un numero de version" do
    expect(Alimento::VERSION).not_to be nil
    
  end
  huevo  = Food.new("Huevo frito", 14.1, 0.0, 19.5)
  leche  = Food.new("Leche vaca" , 3.3 , 4.8,  3.2)
  yogurt = Food.new("Yogurt"     , 3.8 , 4.9,  3.8)
  cerdo  = Food.new("Cerdo"      , 21.5, 0.0,  6.3)
  
  
  it "debe existir un nombre para el alimento" do
    expect(huevo.nombre).not_to be nil
    # expect(huevo.to_s).to eq("Huevo frito")
  end
  
  it "debe existir la cantidad de proteinas del alimento en gramos" do
    # expect(huevo.get_proteinas).not_to be nil
    expect(huevo.proteinas).not_to be nil
  end
  
  it "debe existir la cantidad de glucidos del alimento en gramos" do
    expect(huevo.glucidos).not_to be nil
  end

  it "debe existir la cantidad de grasas del alimento en gramos" do
    expect(huevo.grasas).not_to be nil
  end
  
  it "existe un metodo para obtener el nombre del alimento" do
    expect(huevo.nombre).to eq("Huevo frito")
  end
  
  it "existe un metodo para obtener la cantidad de protinas de un alimento" do
    expect(huevo.proteinas).to eq(14.1)
  end
  
  it "existe un metodo para obtener la cantidad de glucidos de un alimento" do
    expect(huevo.glucidos).to eq(0.0)
  end
  
  it "existe un metodo para obtener la cantidad de grasas de un alimento" do
    expect(huevo.grasas).to eq(19.5)
  end
  
  it "tiene un metodo para obtener alimento formateado" do
    # expect(huevo.to_s).not_to be nil
    expect(huevo.to_s).to eq("Huevo frito: 14.1 · 0.0 · 19.5")
    puts yogurt.to_s
    puts leche.to_s
    puts cerdo.to_s
  end
  
  it "tiene un calcular valor energetico" do
    expect(huevo.get_ve).to eq("231.9 Kcal")
  end
  
end
