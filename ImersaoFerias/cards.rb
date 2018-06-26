require_relative 'card'

cards = []

def menu()
  puts "Digite a opção desejada"
  puts "[1] Inserir um novo card"
  puts "[2] Exibir todos os cards"
  puts "[3] Buscar um card"
  puts "[4] Sair"
  puts
  print 'Escolha uma opção: '
  gets.to_i
end

def inserir_card(cards)
  card = {}
  puts 'Insira uma expressão em Português:'
  card[:portugues] = gets.chomp.downcase
  puts 'Insira uma expressão em Ingles:'
  card[:ingles] = gets.chomp.downcase
  cards << card
  # Bonus/Desafio: estudar e usar o método select
  #cards.each do |c|
  #  if c == card
  #    puts 'Esse card já existe!'
  #    card_existe = true
  #  end
  #end

  #if card_existe == false
  #  cards << card
  #  puts "Você inseriu o card: #{card}"
  #end
  #puts
  #return card # o 'return' é opcional!
end

puts 'Bem vindo ao Cards System'
opcao = menu()

while opcao != 4
  if opcao == 1

    c = inserir_card(cards)

  elsif opcao == 2
    puts "Cards Cadastrados:"
    cards.each do|card|
    print card
    puts
  end

  elsif opcao == 3
    puts "[1] se o texto a ser procurado está em inglês"
    puts "[2] se o texto a ser procurado está em português"
    texto_busca_tipo = gets.to_i

    if (texto_busca_tipo == 1)
      puts("Insira a palavra em inglês")
      texto_busca_ingles = gets.chomp.downcase
      puts ("A palavra a ser buscada é #{texto_busca_ingles}")
      #ACHOU = 0
      #card = {}
        cards.each do |card|
          if card[:ingles].include? texto_busca_ingles
            #ACHOU = 1
            #card_encontrado = "#{card}"
            puts
            print "Card encontrado: #{card}"
            puts
          else
            #ACHOU = 0
            puts
            print "Card não encontrado en-br"
            puts
          end
        end
        #print "Card encontrado: #{card_encontrado}"
    elsif (texto_busca_tipo == 2)
      puts "Insira a plavra em português"
      texto_busca_portugues = gets.chomp.downcase
        cards.each do |card|
          if card[:portugues].include? texto_busca_portugues
            puts
            print "Card encontrado: #{card}"
            puts
          else
          puts "Card não encontrado pt-br"
          end
        end
    end
  end
  opcao = menu()
end

puts 'Obrigado por usar o Cards System!'
