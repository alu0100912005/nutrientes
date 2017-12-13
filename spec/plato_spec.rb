require "spec_helper"
# require "./lib/alimento/alimento"
# require "./lib/alimento/lista"
require "./lib/alimento/plato"

RSpec.describe Plato do
    @lentejas_arroz = Plato.new("Lentejas con arroz, salsa de tomate, huevo y plátano a la plancha") do
        vegetal "Tomate",
            :porcion => "2 piezas pequeñas"
        fruta "Plátano",
            :gramos => 20
        cereal "Arroz",
            :porcion => "1 taza"
        proteina "Lentejas",
            :porcion => "1/2 cucharón"
        proteina "Huevo",
            :porcion => "1 pieza"
        aceite "Aceite de oliva",
            :porcion => "1/2 cucharada"
    end
    context "#Pruebas para Plato" do
        it "#Lentejas" do
          @lentejas_arroz
        end
    end
end