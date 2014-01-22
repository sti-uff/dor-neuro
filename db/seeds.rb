puts "Adicionando UFs"

Uf.transaction do
  File.open(File.expand_path("../../doc/lista_ufs.txt", __FILE__), "r") do |ufs|
    ufs.read.each_line do |uf|
      array = uf.split(/,/)
      unless Uf.find_by_id(array[0].to_i)
        Uf.create(:id => array[0].to_i, :nome => array[1], :sigla => array[2].strip)
      end
    end
  end
end

puts "Adicionando Municipios"

Municipio.transaction do
  File.open(File.expand_path("../../doc/lista_municipios.txt", __FILE__), "r") do |municipios|
    municipios.read.each_line do |municipio|
      array = municipio.split(/,/)
      unless Municipio.find_by_id(array[0].to_i)
        Municipio.create(:id => array[0].to_i, :nome => array[1], :uf_id => array[2].strip.to_i)
      end
    end
  end
end

puts "Adicionando Profissoes"

Profissao.transaction do
  File.open(File.expand_path("../../doc/lista_profissoes.txt", __FILE__), "r") do |profissoes|
    linha = 1
    profissoes.read.each_line do |profissao|
      unless Profissao.find_by_id(linha)
        Profissao.create(:id => linha, :nome => profissao.strip)
      end
      linha += 1
    end
  end
end

puts "Adicionando Cargos"

Cargo.transaction do
  File.open(File.expand_path("../../doc/lista_cargos.txt", __FILE__), "r") do |cargos|
    linha = 1
    cargos.read.each_line do |cargo|
      unless Cargo.find_by_id(linha)
        Cargo.create(:id => linha, :nome => cargo.strip)
      end
      linha += 1
    end
  end
end

puts "Adicionando Centros"

Centro.transaction do
  File.open(File.expand_path("../../doc/lista_centros.txt", __FILE__), "r") do |centros|
    linha = 1
    centros.read.each_line do |centro|
      array = centro.split(/,/)
      unless Centro.find_by_id(linha)
        Centro.create(:id => linha, :nome => array[0].strip, :categoria => array[1].to_i,
          :endereco => Endereco.new(:municipio_id => array[2].to_i, :logradouro => "-", :bairro => "-", :cep => "-"))
      end
      linha += 1
    end
  end
end

puts "Adicionando admin"
Usuario.transaction do
  Usuario.create(:nome => "admin", :email => "admin@dorneuro.com", :password => '654321',
                :cargo_id => 6, :centro_id => 1, :profissao_id => 1)
end
