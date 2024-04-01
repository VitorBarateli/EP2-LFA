def extrair_informacoes_endereco(input)
  regex = /(?:(Aeroporto|Área|Alameda|Al\.|Avenida|Av\.|Campo|Chácara|Colônia|Condomínio|Conjunto|Distrito|Esplanada|Estação|Estrada|Favela|Fazenda|Feira|Jardim|Ladeira|Lago|Lagoa|Largo|Loteamento|Morro|Núcleo|Parque|Passarela|Pátio|Praça|Quadra|Recanto|Residencial|Rodovia|Rua|Setor|Sítio|Travessa|Trecho|Trevo|Vale|Vereda|Via|Viaduto|Viela|Vila) ?([A-Za-zà-ü .]+), ?(n?º? ?[0-9]+)(, ?([A-Za-zà-ü0-9 ., ]+))? ?- ?([A-Za-zà-ü ]+), ?([A-Za-zà-ü ]+)( ?\- ?|\/)([A-Za-zà-ü ]+), ?([0-9]{5}-[0-9]{3}))/
  
  match = regex.match(input)

  if match
    tipo = match[1].gsub(/\./, '') # Remover o ponto quando imprimir
    nome = match[2]
    numero = match[3]
    complemento = match[5]
    bairro = match[6]
    cidade = match[7]
    estado = match[9]
    cep = match[10]

    puts "\nTipo: #{tipo}"
    puts "Nome: #{nome}"
    puts "Número: #{numero}"
    
    if complemento.nil?
      puts "Complemento: Nenhum"
    else
      puts "Complemento: #{complemento}"
    end
    
    puts "Bairro: #{bairro}"
    puts "Cidade: #{cidade}"
    puts "Estado: #{estado}"
    puts "CEP: #{cep}"
    
  else
    puts "Endereço inválido."
  end
end


print "Digite o texto: "
texto = gets.chomp
extrair_informacoes_endereco(texto)