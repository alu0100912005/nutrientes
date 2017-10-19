require "spec_helper"
require "./lib/alimento/alimento.rb"

RSpec.describe Alimento do
  @nombre = "Huevo frito"
  
  it "tiene un numero de version" do
    expect(Alimento::VERSION).not_to be nil
    
  end
  huevo = Food.new(@nombre, 14.1)
  
  it "tiene un nombre" do
    expect(huevo.to_s).not_to be nil
    expect(huevo.to_s).to eq("Huevo frito")
  end
  
  it "tiene unas proteinas" do
    expect(huevo.get_proteinas).not_to be nil
  end

end
