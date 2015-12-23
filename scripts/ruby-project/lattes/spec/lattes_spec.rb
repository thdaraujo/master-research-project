require 'spec_helper'

describe Lattes do
  it 'has a version number' do
    expect(Lattes::VERSION).not_to be nil
  end

  it 'does something useful' do
    expect(Lattes::hello).to eq('Lattes is now doing some stuff.')
  end

  it 'parses some xml' do
    expect(Lattes::parse_xml("../../../cvs/curriculo.xml")).to eq(["DADOS-GERAIS", "PRODUCAO-BIBLIOGRAFICA", "PRODUCAO-TECNICA", "OUTRA-PRODUCAO", "DADOS-COMPLEMENTARES"])
  end


end
