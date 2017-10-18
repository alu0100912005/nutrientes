require "spec_helper"
require "./lib/alimento/alimento"

RSpec.describe Alimento do
  it "tiene un numero de version" do
    expect(Alimento::VERSION).not_to be nil
  end

end
