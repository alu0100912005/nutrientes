require "spec_helper"
require "./lib/alimento/alimento.rb"

RSpec.describe Alimento do
  @nombre = "Huevo frito"
  
  it "tiene un numero de version" do
    expect(Alimento::VERSION).not_to be nil
    
  end
  huevo = Food.new(@nombre, 14.1, 0.0, 19.5)
  
  it "tiene un nombre" do
    expect(huevo.to_s).not_to be nil
    expect(huevo.to_s).to eq("Huevo frito")
  end
  
  it "tiene unas proteinas en gramoss" do
    expect(huevo.get_proteinas).not_to be nil
  end
  
  # it "tiene unas glucidos en gramos" do
  #   expect(huevo.get_glucidos).not_to be nil
  # end

  # it "tiene unas grasas en gramos" do
  #   expect(huevo.get_grasas).not_to be nil
  # end
  
  it "tiene un metodo para obtener alimento formateado" do
    expect(huevo.get_format).not_to be nil
    expect(huevo.get_format).to eq("Huevo frito: 14.1 · 0.0 · 19.5")
  end
  
end
