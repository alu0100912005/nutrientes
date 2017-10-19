require "spec_helper"
require "./lib/alimento/alimento.rb"

RSpec.describe Alimento do
  @nombre = "Huevo frito"
  
  it "tiene un numero de version" do
    expect(Alimento::VERSION).not_to be nil
    
  end
  huevo = Food.new(@nombre, 14.1, 0.0, 19.5)
  
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
    puts huevo.nombre
  end
  
  it "existe un metodo para obtener la cantidad de protinas de un alimento" do
    puts huevo.proteinas
  end
  
  it "existe un metodo para obtener la cantidad de glucidos de un alimento" do
    puts huevo.glucidos
  end
  
  it "existe un metodo para obtener la cantidad de grasas de un alimento" do
    puts huevo.grasas
  end
  
  it "tiene un metodo para obtener alimento formateado" do
    # expect(huevo.get_format).not_to be nil
    expect(huevo.get_format).to eq("Huevo frito: 14.1 · 0.0 · 19.5")
  end
  
  it "tiene un calcular valor energetico" do
    # expect(huevo.get_ve).not_to be nil
    puts huevo.get_ve
  end
  
end