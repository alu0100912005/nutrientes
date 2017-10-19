require "spec_helper"
require "./lib/alimento/alimento.rb"

RSpec.describe Alimento do
  @nombre = "Compota de manzana"
  
  it "tiene un numero de version" do
    expect(Alimento::VERSION).not_to be nil
    
  end
  
  compota = Food.new(@nombre)
  
  it "tiene un nombre" do
    expect(compota.to_s).not_to be nil
  end

end
