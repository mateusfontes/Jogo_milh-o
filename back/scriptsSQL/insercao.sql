USE show_milhao;

-- Inserções para a categoria 'conhecimentos-gerais'
-- Dificuldade: FACIL
INSERT INTO perguntas (questao, correta, falsa1, falsa2, falsa3, dificuldade, categoria) VALUES
('Qual a cor do céu em um dia sem nuvens?', 'Azul', 'Verde', 'Vermelho', 'Amarelo', 'FACIL', 'conhecimentos-gerais'),
('Qual o maior oceano do mundo?', 'Pacífico', 'Atlântico', 'Índico', 'Ártico', 'FACIL', 'conhecimentos-gerais'),
('Qual o nome do planeta conhecido como o Planeta Vermelho?', 'Marte', 'Júpiter', 'Vênus', 'Saturno', 'FACIL', 'conhecimentos-gerais'),
('Quantos dias tem um ano bissexto?', '366', '365', '360', '350', 'FACIL', 'conhecimentos-gerais'),
('Qual é a capital da França?', 'Paris', 'Berlim', 'Londres', 'Madri', 'FACIL', 'conhecimentos-gerais');

-- Dificuldade: MEDIA
INSERT INTO perguntas (questao, correta, falsa1, falsa2, falsa3, dificuldade, categoria) VALUES
('Em qual país está localizada a Grande Muralha?', 'China', 'Índia', 'Egito', 'Japão', 'MEDIA', 'conhecimentos-gerais'),
('Qual o elemento químico com o símbolo "O"?', 'Oxigênio', 'Ouro', 'Ósmio', 'Oxalato', 'MEDIA', 'conhecimentos-gerais'),
('Qual o nome do maior deserto quente do mundo?', 'Saara', 'Gobi', 'Kalahari', 'Arábico', 'MEDIA', 'conhecimentos-gerais'),
('Quem pintou a Mona Lisa?', 'Leonardo da Vinci', 'Pablo Picasso', 'Vincent van Gogh', 'Michelangelo', 'MEDIA', 'conhecimentos-gerais'),
('Qual é o animal mais alto do mundo?', 'Girafa', 'Elefante', 'Urso', 'Cachorro', 'MEDIA', 'conhecimentos-gerais');

-- Dificuldade: DIFICIL
INSERT INTO perguntas (questao, correta, falsa1, falsa2, falsa3, dificuldade, categoria) VALUES
('Em que ano a Segunda Guerra Mundial terminou?', '1945', '1939', '1944', '1950', 'DIFICIL', 'conhecimentos-gerais'),
('Qual é o nome do vulcão mais alto da Europa?', 'Monte Etna', 'Vesúvio', 'Monte Fuji', 'Monte Pelée', 'DIFICIL', 'conhecimentos-gerais'),
('Qual o nome do inventor da lâmpada incandescente?', 'Thomas Edison', 'Nikola Tesla', 'Alexander Graham Bell', 'Isaac Newton', 'DIFICIL', 'conhecimentos-gerais'),
('Qual é o país com a maior extensão territorial do mundo?', 'Rússia', 'Canadá', 'China', 'Estados Unidos', 'DIFICIL', 'conhecimentos-gerais'),
('Qual o metal mais abundante na crosta terrestre?', 'Alumínio', 'Ferro', 'Cobre', 'Ouro', 'DIFICIL', 'conhecimentos-gerais'),
('Qual foi o primeiro ser vivo a viajar para o espaço?', 'A cadela Laika', 'O macaco Albert II', 'O chimpanzé Ham', 'O cachorro Belka', 'DIFICIL', 'conhecimentos-gerais');

-- Inserções para a categoria 'raciocinio-logico'
-- Dificuldade: FACIL
INSERT INTO perguntas (questao, correta, falsa1, falsa2, falsa3, dificuldade, categoria) VALUES
('Se um trem elétrico se move a 100km/h para o norte e o vento está soprando para o sul, para qual direção vai a fumaça?', 'Nenhuma, trens elétricos não produzem fumaça', 'Sul', 'Norte', 'Leste', 'FACIL', 'raciocinio-logico'),
('Qual o próximo número da sequência: 2, 4, 8, 16, ...?', '32', '24', '20', '28', 'FACIL', 'raciocinio-logico'),
('Maria tem 5 filhas. Cada filha tem um irmão. Quantos filhos Maria tem no total?', '6', '5', '10', '1', 'FACIL', 'raciocinio-logico'),
('O que pesa mais: 1kg de chumbo ou 1kg de penas?', 'O mesmo peso', '1kg de chumbo', '1kg de penas', 'É impossível dizer', 'FACIL', 'raciocinio-logico'),
('Se hoje é terça-feira, que dia será depois de amanhã?', 'Quinta-feira', 'Quarta-feira', 'Sexta-feira', 'Sábado', 'FACIL', 'raciocinio-logico');

-- Dificuldade: MEDIA
INSERT INTO perguntas (questao, correta, falsa1, falsa2, falsa3, dificuldade, categoria) VALUES
('Se você tem 12 laranjas e come todas, quantas laranjas sobraram?', '0', '12', '1', '11', 'MEDIA', 'raciocinio-logico'),
('Há um pato, um cachorro, uma maçã e um ovo. Qual o item diferente?', 'Maçã', 'Pato', 'Ovo', 'Cachorro', 'MEDIA', 'raciocinio-logico'),
('Três homens atravessam um rio. O primeiro atravessa em 3 minutos, o segundo em 5 minutos e o terceiro em 7 minutos. Se eles usarem a mesma canoa, qual o tempo total da travessia?', 'O tempo que o último atravessar', '15 minutos', '21 minutos', 'Não é possível saber', 'MEDIA', 'raciocinio-logico'),
('Um relógio está com defeito. O ponteiro das horas se move no dobro da velocidade normal. Se ele marca 6 horas, que horas ele marcará em 3 horas?', '9 horas', '6 horas', '12 horas', '3 horas', 'MEDIA', 'raciocinio-logico'),
('Se você coloca uma vela acesa em um quarto, o que ela faz?', 'Queima', 'Apaga', 'Derrete', 'Não faz nada', 'MEDIA', 'raciocinio-logico');

-- Dificuldade: DIFICIL
INSERT INTO perguntas (questao, correta, falsa1, falsa2, falsa3, dificuldade, categoria) VALUES
('Qual o próximo número da sequência: 1, 1, 2, 3, 5, 8, ...?', '13', '10', '12', '15', 'DIFICIL', 'raciocinio-logico'),
('Uma pessoa está em um quarto escuro com um fósforo, uma vela e uma lamparina. O que ela acende primeiro?', 'O fósforo', 'A vela', 'A lamparina', 'O quarto', 'DIFICIL', 'raciocinio-logico'),
('Um fazendeiro tem 17 ovelhas. Todas, exceto 9, morrem. Quantas ovelhas restaram?', '9', '8', '17', '1', 'DIFICIL', 'raciocinio-logico'),
('O que é que tem 4 pernas de manhã, 2 pernas de tarde e 3 pernas à noite?', 'O ser humano', 'Um caranguejo', 'Uma mesa', 'Um cavalo', 'DIFICIL', 'raciocinio-logico'),
('Se 3 gatos comem 3 ratos em 3 minutos, quantos gatos comem 100 ratos em 100 minutos?', '3 gatos', '100 gatos', '33 gatos', '333 gatos', 'DIFICIL', 'raciocinio-logico'),
('Onde o sábado vem antes do domingo?', 'No dicionário', 'No calendário', 'Na igreja', 'Em qualquer lugar', 'DIFICIL', 'raciocinio-logico');

-- Inserções para a categoria 'portugues'
-- Dificuldade: FACIL
INSERT INTO perguntas (questao, correta, falsa1, falsa2, falsa3, dificuldade, categoria) VALUES
('Qual o plural de "cão"?', 'Cães', 'Cãozinhos', 'Cãos', 'Cões', 'FACIL', 'portugues'),
('Qual é a palavra que completa a frase: "O ______ estava com fome"?', 'Gato', 'Gata', 'Gatos', 'Gatão', 'FACIL', 'portugues'),
('Qual o oposto de "bom"?', 'Mau', 'Mal', 'Péssimo', 'Regular', 'FACIL', 'portugues'),
('Qual o sinônimo de "alegre"?', 'Feliz', 'Triste', 'Cansado', 'Bravo', 'FACIL', 'portugues'),
('Quantas vogais existem no alfabeto?', '5', '6', '4', '7', 'FACIL', 'portugues');

-- Dificuldade: MEDIA
INSERT INTO perguntas (questao, correta, falsa1, falsa2, falsa3, dificuldade, categoria) VALUES
('Qual o plural de "pão"?', 'Pães', 'Pãozinhos', 'Pãos', 'Pões', 'MEDIA', 'portugues'),
('Qual a forma correta: "Eu vi ele" ou "Eu o vi"?', 'Eu o vi', 'Eu vi ele', 'Eu vi-o', 'Eu vi a ele', 'MEDIA', 'portugues'),
('Qual das palavras a seguir é um substantivo próprio?', 'Brasil', 'País', 'Cidade', 'Carro', 'MEDIA', 'portugues'),
('Qual a conjugação correta do verbo "ir" na primeira pessoa do presente do indicativo?', 'Eu vou', 'Eu irei', 'Eu ia', 'Eu fui', 'MEDIA', 'portugues'),
('Qual o coletivo de "estrelas"?', 'Constelação', 'Cardume', 'Alcateia', 'Enxame', 'MEDIA', 'portugues');

-- Dificuldade: DIFICIL
INSERT INTO perguntas (questao, correta, falsa1, falsa2, falsa3, dificuldade, categoria) VALUES
('Em qual das opções a seguir o uso do "que" está correto?', 'A casa em que moro', 'A casa em que eu moro', 'A casa que eu moro', 'A casa o que moro', 'DIFICIL', 'portugues'),
('Qual a figura de linguagem presente na frase: "O vento beijou meu rosto"?', 'Personificação', 'Metáfora', 'Eufemismo', 'Ironia', 'DIFICIL', 'portugues'),
('Qual a forma plural de "guarda-chuva"?', 'Guarda-chuvas', 'Guardas-chuvas', 'Guarda-chuva', 'Guarda-chuvões', 'DIFICIL', 'portugues'),
('Qual o verbo na frase "Ela comprou um carro novo"?', 'Comprou', 'Ela', 'Carro', 'Novo', 'DIFICIL', 'portugues'),
('Qual a diferença entre "afim" e "a fim"?', 'Afim é adjetivo, a fim é locução prepositiva', 'Afim é locução, a fim é adjetivo', 'Ambos são sinônimos', 'Ambos são preposições', 'DIFICIL', 'portugues'),
('Qual a palavra que não pertence ao grupo: amor, ódio, raiva, felicidade?', 'Ódio', 'Amor', 'Raiva', 'Felicidade', 'DIFICIL', 'portugues');

-- Inserções para a categoria 'matematica'
-- Dificuldade: FACIL
INSERT INTO perguntas (questao, correta, falsa1, falsa2, falsa3, dificuldade, categoria) VALUES
('Quanto é 7 x 8?', '56', '42', '64', '49', 'FACIL', 'matematica'),
('Se eu tenho 10 maçãs e dou 3, com quantas eu fico?', '7', '13', '3', '10', 'FACIL', 'matematica'),
('Quanto é 15 + 25?', '40', '35', '50', '30', 'FACIL', 'matematica'),
('Qual é o resultado de 100 dividido por 2?', '50', '25', '10', '20', 'FACIL', 'matematica'),
('Qual é o dobro de 9?', '18', '11', '27', '90', 'FACIL', 'matematica');

-- Dificuldade: MEDIA
INSERT INTO perguntas (questao, correta, falsa1, falsa2, falsa3, dificuldade, categoria) VALUES
('Quanto é 120 / 12?', '10', '12', '120', '1', 'MEDIA', 'matematica'),
('Qual é a raiz quadrada de 81?', '9', '8', '11', '7', 'MEDIA', 'matematica'),
('Quanto é $2^5$?', '32', '10', '25', '16', 'MEDIA', 'matematica'),
('Se um círculo tem 5cm de raio, qual o diâmetro?', '10cm', '5cm', '25cm', '20cm', 'MEDIA', 'matematica'),
('Quanto é 0.25 + 0.75?', '1', '0.50', '1.5', '0.10', 'MEDIA', 'matematica');

-- Dificuldade: DIFICIL
INSERT INTO perguntas (questao, correta, falsa1, falsa2, falsa3, dificuldade, categoria) VALUES
('Quanto é $12 \times (4+2)$?', '72', '48', '36', '24', 'DIFICIL', 'matematica'),
('Qual é o resultado de $5!$ (fatorial de 5)?', '120', '25', '15', '125', 'DIFICIL', 'matematica'),
('Qual a fórmula da área de um triângulo?', 'Base x Altura / 2', 'Lado x Lado', 'Pi x Raio²', 'Comprimento x Largura', 'DIFICIL', 'matematica'),
('Qual o valor de $\pi$ (pi) com duas casas decimais?', '3.14', '3.12', '3.15', '3.16', 'DIFICIL', 'matematica'),
('Se $2x + 5 = 15$, qual o valor de x?', '5', '10', '2', '20', 'DIFICIL', 'matematica'),
('Qual o resultado de $2^3 + 3^2$?', '17', '15', '12', '10', 'DIFICIL', 'matematica');

-- Inserções para a categoria 'geografia'
-- Dificuldade: FACIL
INSERT INTO perguntas (questao, correta, falsa1, falsa2, falsa3, dificuldade, categoria) VALUES
('Qual o nome do rio mais longo do mundo?', 'Rio Nilo', 'Rio Amazonas', 'Rio Tietê', 'Rio Sena', 'FACIL', 'geografia'),
('Qual o continente mais populoso do mundo?', 'Ásia', 'África', 'América', 'Europa', 'FACIL', 'geografia'),
('Em qual país fica o Monte Everest?', 'Nepal e China', 'Brasil', 'Canadá', 'Japão', 'FACIL', 'geografia'),
('Qual é o país do sol nascente?', 'Japão', 'China', 'Coreia', 'Tailândia', 'FACIL', 'geografia'),
('Qual o nome da capital do estado de São Paulo?', 'São Paulo', 'Rio de Janeiro', 'Belo Horizonte', 'Salvador', 'FACIL', 'geografia');

-- Dificuldade: MEDIA
INSERT INTO perguntas (questao, correta, falsa1, falsa2, falsa3, dificuldade, categoria) VALUES
('Em qual hemisfério está a maior parte do Brasil?', 'Hemisfério Sul', 'Hemisfério Norte', 'Hemisfério Oriental', 'Hemisfério Ocidental', 'MEDIA', 'geografia'),
('Qual a maior ilha do mundo?', 'Groenlândia', 'Madagascar', 'Bornéu', 'Nova Guiné', 'MEDIA', 'geografia'),
('Qual o maior país da América do Sul?', 'Brasil', 'Argentina', 'Chile', 'Colômbia', 'MEDIA', 'geografia'),
('Qual o nome do estreito que separa a Ásia da América do Norte?', 'Estreito de Bering', 'Estreito de Magalhães', 'Canal do Panamá', 'Canal de Suez', 'MEDIA', 'geografia'),
('Qual o nome do deserto mais árido do mundo?', 'Deserto do Atacama', 'Deserto do Saara', 'Deserto de Gobi', 'Deserto de Kalahari', 'MEDIA', 'geografia');

-- Dificuldade: DIFICIL
INSERT INTO perguntas (questao, correta, falsa1, falsa2, falsa3, dificuldade, categoria) VALUES
('Qual a cidade mais populosa do mundo?', 'Tóquio', 'Xangai', 'Delhi', 'São Paulo', 'DIFICIL', 'geografia'),
('Qual a capital da Austrália?', 'Camberra', 'Sydney', 'Melbourne', 'Brisbane', 'DIFICIL', 'geografia'),
('Qual o nome do maior vulcão ativo do mundo?', 'Mauna Loa', 'Vesúvio', 'Monte Fuji', 'Popocatépetl', 'DIFICIL', 'geografia'),
('Qual o nome do bioma caracterizado por grandes savanas e árvores espalhadas?', 'Cerrado', 'Floresta Amazônica', 'Caatinga', 'Pampa', 'DIFICIL', 'geografia'),
('Qual é a maior bacia hidrográfica do mundo?', 'Bacia Amazônica', 'Bacia do Congo', 'Bacia do Mississipi', 'Bacia do Nilo', 'DIFICIL', 'geografia'),
('Qual o menor país do mundo em área territorial?', 'Vaticano', 'Mônaco', 'Nauru', 'San Marino', 'DIFICIL', 'geografia');

-- Inserções para a categoria 'historia'
-- Dificuldade: FACIL
INSERT INTO perguntas (questao, correta, falsa1, falsa2, falsa3, dificuldade, categoria) VALUES
('Quem descobriu o Brasil?', 'Pedro Álvares Cabral', 'Cristóvão Colombo', 'Vasco da Gama', 'Fernão de Magalhães', 'FACIL', 'historia'),
('Em que ano a Revolução Francesa começou?', '1789', '1804', '1776', '1815', 'FACIL', 'historia'),
('Qual o nome do famoso general romano que governou a Gália?', 'Júlio César', 'Augusto', 'Nero', 'Marco Aurélio', 'FACIL', 'historia'),
('Quem foi o primeiro presidente do Brasil?', 'Marechal Deodoro da Fonseca', 'Getúlio Vargas', 'Floriano Peixoto', 'Tancredo Neves', 'FACIL', 'historia'),
('Qual o evento que marcou o fim da Idade Média?', 'Queda de Constantinopla', 'Revolução Francesa', 'Descobrimento da América', 'Reforma Protestante', 'FACIL', 'historia');

-- Dificuldade: MEDIA
INSERT INTO perguntas (questao, correta, falsa1, falsa2, falsa3, dificuldade, categoria) VALUES
('Quem foi a primeira mulher a governar o Egito?', 'Hatshepsut', 'Cleópatra', 'Nefertiti', 'Núbia', 'MEDIA', 'historia'),
('O que foi a Peste Negra?', 'Uma pandemia no século XIV', 'Um tipo de praga de gafanhotos', 'Uma doença de pele', 'Uma guerra', 'MEDIA', 'historia'),
('Quem assinou a Lei Áurea no Brasil?', 'Princesa Isabel', 'Dom Pedro II', 'Dom Pedro I', 'Getúlio Vargas', 'MEDIA', 'historia'),
('Qual o nome do primeiro imperador romano?', 'Augusto', 'Júlio César', 'Nero', 'Marco Aurélio', 'MEDIA', 'historia'),
('Quem foi o líder da Marcha do Sal na Índia?', 'Mahatma Gandhi', 'Jawaharlal Nehru', 'Indira Gandhi', 'Subhas Chandra Bose', 'MEDIA', 'historia');

-- Dificuldade: DIFICIL
INSERT INTO perguntas (questao, correta, falsa1, falsa2, falsa3, dificuldade, categoria) VALUES
('Em que ano a Guerra Fria começou?', '1947', '1945', '1950', '1961', 'DIFICIL', 'historia'),
('O que foi a Doutrina Monroe?', 'Uma política externa dos EUA para a América', 'Um tratado de paz europeu', 'Uma doutrina religiosa', 'Uma teoria econômica', 'DIFICIL', 'historia'),
('Qual a data da Proclamação da República do Brasil?', '15 de novembro de 1889', '7 de setembro de 1822', '22 de abril de 1500', '13 de maio de 1888', 'DIFICIL', 'historia'),
('Qual o nome do famoso líder mongol que criou o maior império contíguo da história?', 'Gengis Khan', 'Kublai Khan', 'Atila, o Huno', 'Tamerlão', 'DIFICIL', 'historia'),
('Onde o Tratado de Tordesilhas foi assinado?', 'Tordesilhas (Espanha)', 'Lisboa (Portugal)', 'Madrid (Espanha)', 'Roma (Itália)', 'DIFICIL', 'historia'),
('O que foi o Iluminismo?', 'Um movimento cultural e filosófico do século XVIII', 'Um período de grandes descobertas científicas', 'Uma guerra religiosa', 'Um movimento artístico', 'DIFICIL', 'historia');

-- Inserções para a categoria 'ciencias'
-- Dificuldade: FACIL
INSERT INTO perguntas (questao, correta, falsa1, falsa2, falsa3, dificuldade, categoria) VALUES
('Qual o nome do gás que os humanos inalam?', 'Oxigênio', 'Dióxido de carbono', 'Nitrogênio', 'Hidrogênio', 'FACIL', 'ciencias'),
('Qual o maior planeta do nosso sistema solar?', 'Júpiter', 'Saturno', 'Marte', 'Terra', 'FACIL', 'ciencias'),
('Qual a principal fonte de energia da Terra?', 'Sol', 'Lua', 'Vento', 'Água', 'FACIL', 'ciencias'),
('Qual o nome do processo em que as plantas produzem seu próprio alimento?', 'Fotossíntese', 'Respiração', 'Transpiração', 'Fermentação', 'FACIL', 'ciencias'),
('Qual o nome da ciência que estuda os animais?', 'Zoologia', 'Botânica', 'Geologia', 'Astronomia', 'FACIL', 'ciencias');

-- Dificuldade: MEDIA
INSERT INTO perguntas (questao, correta, falsa1, falsa2, falsa3, dificuldade, categoria) VALUES
('Qual o nome da célula responsável por transportar oxigênio no sangue?', 'Glóbulo vermelho', 'Glóbulo branco', 'Plaqueta', 'Neurônio', 'MEDIA', 'ciencias'),
('Qual a velocidade da luz no vácuo?', 'Aproximadamente 300.000 km/s', 'Aproximadamente 100.000 km/s', 'Aproximadamente 500.000 km/s', 'Aproximadamente 30.000 km/s', 'MEDIA', 'ciencias'),
('Qual o nome do cientista que formulou a teoria da relatividade?', 'Albert Einstein', 'Isaac Newton', 'Stephen Hawking', 'Galileu Galilei', 'MEDIA', 'ciencias'),
('Qual a função do DNA?', 'Armazenar informações genéticas', 'Produzir energia para a célula', 'Controlar a temperatura do corpo', 'Auxiliar na digestão', 'MEDIA', 'ciencias'),
('O que é um ecossistema?', 'Conjunto de seres vivos e o ambiente físico', 'Um tipo de animal', 'Uma planta', 'Uma rocha', 'MEDIA', 'ciencias');

-- Dificuldade: DIFICIL
INSERT INTO perguntas (questao, correta, falsa1, falsa2, falsa3, dificuldade, categoria) VALUES
('Qual o nome do menor osso do corpo humano?', 'Estribo', 'Fêmur', 'Tíbia', 'Costela', 'DIFICIL', 'ciencias'),
('O que a lei da conservação da energia afirma?', 'A energia não pode ser criada nem destruída, apenas transformada', 'A energia é sempre criada e destruída', 'A energia é sempre constante', 'A energia é criada do nada', 'DIFICIL', 'ciencias'),
('O que são quarks?', 'Partículas elementares que formam prótons e nêutrons', 'Um tipo de elemento químico', 'Um tipo de bactéria', 'Um tipo de estrela', 'DIFICIL', 'ciencias'),
('Qual o nome do processo de divisão celular que resulta em células com metade do número de cromossomos?', 'Meiose', 'Mitose', 'Gametogênese', 'Fagocitose', 'DIFICIL', 'ciencias'),
('Qual o nome do famoso astrônomo que foi condenado pela Inquisição por defender o heliocentrismo?', 'Galileu Galilei', 'Copérnico', 'Isaac Newton', 'Johannes Kepler', 'DIFICIL', 'ciencias'),
('Qual a unidade de medida de força no Sistema Internacional (SI)?', 'Newton', 'Joule', 'Watt', 'Pascal', 'DIFICIL', 'ciencias');

-- Inserções para a categoria 'cultura-pop'
-- Dificuldade: FACIL
INSERT INTO perguntas (questao, correta, falsa1, falsa2, falsa3, dificuldade, categoria) VALUES
('Quem é o criador dos personagens Mickey Mouse e Pato Donald?', 'Walt Disney', 'Steve Jobs', 'Steven Spielberg', 'George Lucas', 'FACIL', 'cultura-pop'),
('Qual o nome do famoso assistente de Batman?', 'Robin', 'Alfred', 'Coringa', 'Lanterna Verde', 'FACIL', 'cultura-pop'),
('Qual o nome da famosa bruxa de Harry Potter?', 'Hermione Granger', 'Ginny Weasley', 'Luna Lovegood', 'Bellatrix Lestrange', 'FACIL', 'cultura-pop'),
('Em qual filme o personagem "Jack" diz a frase: "Eu sou o rei do mundo!"?', 'Titanic', 'Avatar', 'Star Wars', 'O Senhor dos Anéis', 'FACIL', 'cultura-pop'),
('Qual a banda de rock britânica que tem a música "Bohemian Rhapsody"?', 'Queen', 'The Beatles', 'Led Zeppelin', 'Pink Floyd', 'FACIL', 'cultura-pop');

-- Dificuldade: MEDIA
INSERT INTO perguntas (questao, correta, falsa1, falsa2, falsa3, dificuldade, categoria) VALUES
('Qual é a série da Netflix que conta a história de Eleven e seus amigos?', 'Stranger Things', 'Dark', 'Lúcifer', 'The Witcher', 'MEDIA', 'cultura-pop'),
('Qual é o nome do criador do Homem-Aranha, Hulk, e X-Men?', 'Stan Lee', 'Bob Kane', 'Jack Kirby', 'Jim Lee', 'MEDIA', 'cultura-pop'),
('Quem é o vocalista da banda de rock Nirvana?', 'Kurt Cobain', 'Dave Grohl', 'Chad Channing', 'Krist Novoselic', 'MEDIA', 'cultura-pop'),
('Qual o nome do primeiro filme da série Harry Potter?', 'Harry Potter e a Pedra Filosofal', 'Harry Potter e a Câmara Secreta', 'Harry Potter e o Prisioneiro de Azkaban', 'Harry Potter e o Cálice de Fogo', 'MEDIA', 'cultura-pop'),
('Em qual filme o personagem "Forrest Gump" conta sua vida em um banco de praça?', 'Forrest Gump', 'O Resgate do Soldado Ryan', 'Pulp Fiction', 'A Espera de um Milagre', 'MEDIA', 'cultura-pop');

-- Dificuldade: DIFICIL
INSERT INTO perguntas (questao, correta, falsa1, falsa2, falsa3, dificuldade, categoria) VALUES
('Qual a verdadeira identidade do personagem "Coringa"?', 'Jack Napier', 'Bruce Wayne', 'Clark Kent', 'Barry Allen', 'DIFICIL', 'cultura-pop'),
('Qual foi o primeiro longa-metragem de animação da história?', 'Branca de Neve e os Sete Anões', 'Toy Story', 'A Bela e a Fera', 'O Rei Leão', 'DIFICIL', 'cultura-pop'),
('Qual a banda que tem a famosa música "Sweet Child o'' Mine"?', 'Guns N'' Roses', 'Aerosmith', 'Bon Jovi', 'AC/DC', 'DIFICIL', 'cultura-pop'),
('Qual o nome da cidade fictícia onde se passa a série "The Simpsons"?', 'Springfield', 'Quahog', 'South Park', 'Metropolis', 'DIFICIL', 'cultura-pop'),
('Qual o ator que interpretou o personagem "Tyler Durden" no filme "Clube da Luta"?', 'Brad Pitt', 'Edward Norton', 'Christian Bale', 'Leonardo DiCaprio', 'DIFICIL', 'cultura-pop'),
('Qual o nome do criador da série de TV "Game of Thrones"?', 'David Benioff e D. B. Weiss', 'George R. R. Martin', 'Peter Jackson', 'Steven Moffat', 'DIFICIL', 'cultura-pop');

-- Inserções para a categoria 'esportes'
-- Dificuldade: FACIL
INSERT INTO perguntas (questao, correta, falsa1, falsa2, falsa3, dificuldade, categoria) VALUES
('Quantos jogadores tem um time de futebol em campo?', '11', '10', '9', '12', 'FACIL', 'esportes'),
('Qual esporte utiliza um taco e uma bolinha?', 'Golfe', 'Basquete', 'Vôlei', 'Tênis', 'FACIL', 'esportes'),
('Qual o nome do esporte em que se corre em uma piscina?', 'Natação', 'Futebol', 'Ciclismo', 'Atletismo', 'FACIL', 'esportes'),
('Qual país sediou a Copa do Mundo de 2014?', 'Brasil', 'Alemanha', 'Rússia', 'África do Sul', 'FACIL', 'esportes'),
('Quantos pontos vale um touchdown no futebol americano?', '6', '3', '1', '7', 'FACIL', 'esportes');

-- Dificuldade: MEDIA
INSERT INTO perguntas (questao, correta, falsa1, falsa2, falsa3, dificuldade, categoria) VALUES
('Qual o nome do famoso jogador de basquete conhecido como "Air Jordan"?', 'Michael Jordan', 'LeBron James', 'Kobe Bryant', 'Stephen Curry', 'MEDIA', 'esportes'),
('Qual o país que sediou as Olimpíadas de 2016?', 'Brasil', 'Japão', 'China', 'Inglaterra', 'MEDIA', 'esportes'),
('Em qual esporte o Brasil é mais conhecido?', 'Futebol', 'Vôlei', 'Basquete', 'Fórmula 1', 'MEDIA', 'esportes'),
('Qual o nome do esporte que se joga com um cavalo?', 'Polo', 'Hipismo', 'Corrida de cavalos', 'Equitação', 'MEDIA', 'esportes'),
('Qual é a distância de uma maratona?', '42,195 km', '21,097 km', '100 m', '10 km', 'MEDIA', 'esportes');

-- Dificuldade: DIFICIL
INSERT INTO perguntas (questao, correta, falsa1, falsa2, falsa3, dificuldade, categoria) VALUES
('Qual o nome do piloto brasileiro com mais títulos na Fórmula 1?', 'Nelson Piquet', 'Ayrton Senna', 'Emerson Fittipaldi', 'Felipe Massa', 'DIFICIL', 'esportes'),
('Qual é o nome do estádio onde a final da Copa do Mundo de 1950 foi realizada?', 'Maracanã', 'Pacaembu', 'Mineirão', 'Estádio do Morumbi', 'DIFICIL', 'esportes'),
('Qual o nome do jogador de futebol que marcou mais gols em uma única temporada?', 'Lionel Messi', 'Cristiano Ronaldo', 'Pelé', 'Romário', 'DIFICIL', 'esportes'),
('Qual o nome do boxeador conhecido como "o maior de todos os tempos"?', 'Muhammad Ali', 'Mike Tyson', 'George Foreman', 'Joe Frazier', 'DIFICIL', 'esportes'),
('O que é o "Grand Slam" no tênis?', 'Os quatro maiores torneios de tênis do mundo', 'Um tipo de jogada', 'O nome de um tenista', 'Um evento de caridade', 'DIFICIL', 'esportes'),
('Qual país venceu mais vezes a Copa do Mundo de Futebol Masculino?', 'Brasil', 'Alemanha', 'Itália', 'Argentina', 'DIFICIL', 'esportes');

-- Inserções para a categoria 'tecnologia'
-- Dificuldade: FACIL
INSERT INTO perguntas (questao, correta, falsa1, falsa2, falsa3, dificuldade, categoria) VALUES
('O que significa a sigla "CPU"?', 'Central Processing Unit', 'Central Power Unit', 'Control Processing Unit', 'Computer Personal Unit', 'FACIL', 'tecnologia'),
('Qual o nome da empresa criadora do iPhone?', 'Apple', 'Samsung', 'Google', 'Microsoft', 'FACIL', 'tecnologia'),
('Qual é o nome da linguagem de programação usada para criar páginas da web?', 'HTML', 'Java', 'Python', 'C++', 'FACIL', 'tecnologia'),
('O que é um "Byte"?', 'Uma unidade de armazenamento digital', 'Um tipo de vírus', 'Uma peça de hardware', 'Um tipo de software', 'FACIL', 'tecnologia'),
('Qual a sigla para o Sistema Operacional mais comum em computadores?', 'Windows', 'Android', 'iOS', 'Linux', 'FACIL', 'tecnologia');

-- Dificuldade: MEDIA
INSERT INTO perguntas (questao, correta, falsa1, falsa2, falsa3, dificuldade, categoria) VALUES
('Qual o nome da empresa por trás do sistema operacional Android?', 'Google', 'Apple', 'Microsoft', 'Samsung', 'MEDIA', 'tecnologia'),
('O que é um "firewall"?', 'Um sistema de segurança de rede', 'Um tipo de vírus', 'Um programa de edição de imagem', 'Um tipo de navegador web', 'MEDIA', 'tecnologia'),
('Qual o nome da primeira rede social do mundo?', 'Six Degrees', 'MySpace', 'Orkut', 'Facebook', 'MEDIA', 'tecnologia'),
('Qual o nome da linguagem de programação mais popular do mundo?', 'Python', 'JavaScript', 'Java', 'C++', 'MEDIA', 'tecnologia'),
('O que significa a sigla "HTTP"?', 'Hypertext Transfer Protocol', 'Hyper Transfer Text Protocol', 'Hyperlink Text Protocol', 'Home Text Transfer Protocol', 'MEDIA', 'tecnologia');

-- Dificuldade: DIFICIL
INSERT INTO perguntas (questao, correta, falsa1, falsa2, falsa3, dificuldade, categoria) VALUES
('O que é um "algoritmo"?', 'Uma sequência de passos para resolver um problema', 'Um tipo de linguagem de programação', 'Um hardware de computador', 'Uma ferramenta de software', 'DIFICIL', 'tecnologia'),
('Qual o nome do criador da World Wide Web?', 'Tim Berners-Lee', 'Bill Gates', 'Steve Jobs', 'Mark Zuckerberg', 'DIFICIL', 'tecnologia'),
('O que é um "backdoor" em segurança da informação?', 'Uma forma de acesso não autorizado a um sistema', 'Um tipo de vírus de computador', 'Uma falha de hardware', 'Um recurso de software', 'DIFICIL', 'tecnologia'),
('Qual o nome da empresa que desenvolveu o primeiro microprocessador comercial?', 'Intel', 'AMD', 'IBM', 'Microsoft', 'DIFICIL', 'tecnologia'),
('Qual o nome do robô que foi o primeiro a ser enviado para Marte?', 'Spirit', 'Curiosity', 'Opportunity', 'Pathfinder', 'DIFICIL', 'tecnologia'),
('Qual a diferença entre "IPv4" e "IPv6"?', 'A quantidade de endereços que cada um suporta', 'A velocidade de conexão', 'O tipo de protocolo', 'A segurança da rede', 'DIFICIL', 'tecnologia');

-- Inserções para a categoria 'curiosidades'
-- Dificuldade: FACIL
INSERT INTO perguntas (questao, correta, falsa1, falsa2, falsa3, dificuldade, categoria) VALUES
('Qual o nome do animal que tem 3 corações?', 'Polvo', 'Tubarão', 'Gato', 'Cachorro', 'FACIL', 'curiosidades'),
('Qual a cor de um panda?', 'Preto e branco', 'Verde e branco', 'Vermelho e preto', 'Azul e branco', 'FACIL', 'curiosidades'),
('Qual o único mamífero que pode voar?', 'Morcego', 'Pássaro', 'Inseto', 'Peixe', 'FACIL', 'curiosidades'),
('Quantos lados tem um triângulo?', '3', '4', '5', '6', 'FACIL', 'curiosidades'),
('O que a luz do sol contém?', 'Vitamina D', 'Vitamina C', 'Vitamina A', 'Vitamina E', 'FACIL', 'curiosidades');

-- Dificuldade: MEDIA
INSERT INTO perguntas (questao, correta, falsa1, falsa2, falsa3, dificuldade, categoria) VALUES
('Qual o nome do animal que pode viver mais de 100 anos?', 'Tartaruga', 'Elefante', 'Crocodilo', 'Baleia', 'MEDIA', 'curiosidades'),
('Qual a parte do corpo que não pode ser quebrada?', 'Nenhuma parte do corpo pode ser quebrada', 'A cabeça', 'O pescoço', 'O braço', 'MEDIA', 'curiosidades'),
('Qual o nome do único animal que não salta?', 'Elefante', 'Canguru', 'Coelho', 'Gato', 'MEDIA', 'curiosidades'),
('Qual o animal que tem o maior cérebro em relação ao corpo?', 'Formiga', 'Elefante', 'Baleia', 'Golfinho', 'MEDIA', 'curiosidades'),
('Qual o país que tem a maior população de ursos polares?', 'Canadá', 'Rússia', 'Noruega', 'Groenlândia', 'MEDIA', 'curiosidades');

-- Dificuldade: DIFICIL
INSERT INTO perguntas (questao, correta, falsa1, falsa2, falsa3, dificuldade, categoria) VALUES
('Qual o nome do único país que não usa o sistema métrico?', 'Estados Unidos', 'Brasil', 'Canadá', 'Inglaterra', 'DIFICIL', 'curiosidades'),
('Qual o nome do país que tem mais castelos no mundo?', 'Alemanha', 'França', 'Inglaterra', 'Itália', 'DIFICIL', 'curiosidades'),
('Qual o nome do único mamífero que não tem cordas vocais?', 'Girafa', 'Elefante', 'Leão', 'Tigre', 'DIFICIL', 'curiosidades'),
('Qual o único planeta que tem luas?', 'Júpiter', 'Marte', 'Vênus', 'Terra', 'DIFICIL', 'curiosidades'),
('Qual o nome do vulcão mais alto da Europa?', 'Monte Etna', 'Vesúvio', 'Stromboli', 'Popocatépetl', 'DIFICIL', 'curiosidades'),
('Qual o nome do único continente que não tem rios?', 'Antártida', 'África', 'Ásia', 'Oceania', 'DIFICIL', 'curiosidades');

-- Inserções para a categoria 'ciencias' (Dificuldade: FACIL)
INSERT INTO perguntas (questao, correta, falsa1, falsa2, falsa3, dificuldade, categoria) VALUES
('Qual é a substância mais abundante na Terra?', 'Água', 'Petróleo', 'Ferro', 'Ar', 'FACIL', 'ciencias'),
('Qual é o osso mais longo do corpo humano?', 'Fêmur', 'Tíbia', 'Costela', 'Crânio', 'FACIL', 'ciencias'),
('Qual é a unidade básica de vida?', 'Célula', 'Átomo', 'Molécula', 'DNA', 'FACIL', 'ciencias'),
('O que é a gravidade?', 'Força que atrai objetos para o centro da Terra', 'Força que repele objetos', 'A força que mantém os planetas em órbita', 'Uma forma de energia', 'FACIL', 'ciencias'),
('Qual é o nome do processo de transformação da água de líquido para gás?', 'Evaporação', 'Condensação', 'Sublimação', 'Fusão', 'FACIL', 'ciencias');

-- Inserções para a categoria 'ciencias' (Dificuldade: MEDIA)
INSERT INTO perguntas (questao, correta, falsa1, falsa2, falsa3, dificuldade, categoria) VALUES
('Qual é o nome da parte da célula que controla suas atividades?', 'Núcleo', 'Citoplasma', 'Mitocôndria', 'Membrana plasmática', 'MEDIA', 'ciencias'),
('Qual o nome do gás mais abundante na atmosfera terrestre?', 'Nitrogênio', 'Oxigênio', 'Dióxido de carbono', 'Argônio', 'MEDIA', 'ciencias'),
('Qual o nome da ciência que estuda os fósseis?', 'Paleontologia', 'Arqueologia', 'Geologia', 'Biologia', 'MEDIA', 'ciencias'),
('Qual o nome da galáxia que a Terra pertence?', 'Via Láctea', 'Andrômeda', 'Tríptico', 'Sombrero', 'MEDIA', 'ciencias'),
('O que é um buraco negro?', 'Uma região do espaço com uma atração gravitacional tão forte que nada pode escapar dela', 'Uma estrela extinta', 'Um tipo de galáxia', 'Um planeta', 'MEDIA', 'ciencias');

-- Inserções para a categoria 'ciencias' (Dificuldade: DIFICIL)
INSERT INTO perguntas (questao, correta, falsa1, falsa2, falsa3, dificuldade, categoria) VALUES
('Qual o nome do fenômeno que causa as auroras boreais e austrais?', 'Vento solar interagindo com o campo magnético da Terra', 'Ondas de rádio', 'Luz do sol refletida na lua', 'Fenômeno meteorológico', 'DIFICIL', 'ciencias'),
('Qual o nome da partícula subatômica com carga negativa?', 'Elétron', 'Próton', 'Nêutron', 'Fóton', 'DIFICIL', 'ciencias'),
('O que é o "Efeito Doppler"?', 'Mudança na frequência de uma onda em relação a um observador em movimento', 'Um tipo de som', 'Uma lei da física', 'Um fenômeno de luz', 'DIFICIL', 'ciencias'),
('Qual a menor partícula de um elemento químico que mantém as propriedades do elemento?', 'Átomo', 'Molécula', 'Elétron', 'Próton', 'DIFICIL', 'ciencias'),
('Qual o nome do processo de fusão nuclear que ocorre no Sol?', 'Ciclo do carbono', 'Fusão do hidrogênio', 'Fissão nuclear', 'Combustão', 'DIFICIL', 'ciencias'),
('O que é a teoria do "Big Bang"?', 'A teoria que explica a origem do universo', 'Uma teoria sobre a formação das galáxias', 'Uma teoria sobre a origem da vida', 'Uma teoria sobre a extinção dos dinossauros', 'DIFICIL', 'ciencias');

-- Inserções para a categoria 'conhecimentos-gerais' (Dificuldade: FACIL)
INSERT INTO perguntas (questao, correta, falsa1, falsa2, falsa3, dificuldade, categoria) VALUES
('Qual é a capital da Itália?', 'Roma', 'Milão', 'Veneza', 'Florença', 'FACIL', 'conhecimentos-gerais'),
('Qual o nome da maior fruta do mundo?', 'Jaca', 'Melancia', 'Abacaxi', 'Banana', 'FACIL', 'conhecimentos-gerais'),
('Qual o nome do maior animal terrestre?', 'Elefante', 'Girafa', 'Rinoceronte', 'Hipopótamo', 'FACIL', 'conhecimentos-gerais'),
('Qual é a língua oficial do Brasil?', 'Português', 'Espanhol', 'Inglês', 'Francês', 'FACIL', 'conhecimentos-gerais'),
('Qual o nome do famoso museu de arte de Paris, França?', 'Louvre', 'Museu Britânico', 'Metropolitan Museum of Art', 'Tate Modern', 'FACIL', 'conhecimentos-gerais');

-- Inserções para a categoria 'conhecimentos-gerais' (Dificuldade: MEDIA)
INSERT INTO perguntas (questao, correta, falsa1, falsa2, falsa3, dificuldade, categoria) VALUES
('Qual o nome da cordilheira mais longa do mundo?', 'Andes', 'Himalaia', 'Rocosas', 'Alpes', 'MEDIA', 'conhecimentos-gerais'),
('Qual o nome do país com a maior quantidade de lagos do mundo?', 'Canadá', 'Rússia', 'Estados Unidos', 'Brasil', 'MEDIA', 'conhecimentos-gerais'),
('Qual o nome da capital do Egito?', 'Cairo', 'Alexandria', 'Luxor', 'Gizé', 'MEDIA', 'conhecimentos-gerais'),
('Qual o nome do famoso monumento de Paris que foi construído em 1889?', 'Torre Eiffel', 'Arco do Triunfo', 'Catedral de Notre-Dame', 'Sainte-Chapelle', 'MEDIA', 'conhecimentos-gerais'),
('Qual o nome do cientista que descobriu a penicilina?', 'Alexander Fleming', 'Louis Pasteur', 'Marie Curie', 'Robert Koch', 'MEDIA', 'conhecimentos-gerais');

-- Inserções para a categoria 'conhecimentos-gerais' (Dificuldade: DIFICIL)
INSERT INTO perguntas (questao, correta, falsa1, falsa2, falsa3, dificuldade, categoria) VALUES
('Qual o nome do primeiro explorador a circum-navegar o mundo?', 'Fernão de Magalhães', 'Cristóvão Colombo', 'Vasco da Gama', 'James Cook', 'DIFICIL', 'conhecimentos-gerais'),
('Em qual país está localizada a cidade de Petra?', 'Jordânia', 'Egito', 'Israel', 'Síria', 'DIFICIL', 'conhecimentos-gerais'),
('Qual o nome da pintura mais famosa de Leonardo da Vinci?', 'Mona Lisa', 'A Última Ceia', 'Anunciação', 'Virgem dos Rochedos', 'DIFICIL', 'conhecimentos-gerais'),
('Qual o nome do país que tem a forma de uma bota?', 'Itália', 'Espanha', 'Grécia', 'França', 'DIFICIL', 'conhecimentos-gerais'),
('O que é a Declaração Universal dos Direitos Humanos?', 'Um documento adotado pela ONU em 1948', 'Um tratado de paz europeu', 'Uma lei do Brasil', 'Uma constituição', 'DIFICIL', 'conhecimentos-gerais'),
('Qual o nome da cidade italiana famosa por seus canais?', 'Veneza', 'Roma', 'Milão', 'Florença', 'DIFICIL', 'conhecimentos-gerais');

-- Inserções para a categoria 'matematica' (Dificuldade: FACIL)
INSERT INTO perguntas (questao, correta, falsa1, falsa2, falsa3, dificuldade, categoria) VALUES
('Quanto é 10 + 10?', '20', '100', '10', '0', 'FACIL', 'matematica'),
('Quanto é 50 - 25?', '25', '75', '50', '100', 'FACIL', 'matematica'),
('Qual o valor de 2 x 2?', '4', '2', '8', '6', 'FACIL', 'matematica'),
('Quanto é 100 / 10?', '10', '100', '1', '20', 'FACIL', 'matematica'),
('Qual o resultado de 5 + 5 - 5?', '5', '10', '0', '25', 'FACIL', 'matematica');

-- Inserções para a categoria 'matematica' (Dificuldade: MEDIA)
INSERT INTO perguntas (questao, correta, falsa1, falsa2, falsa3, dificuldade, categoria) VALUES
('Qual o resultado de $5^2$?', '25', '10', '7', '1', 'MEDIA', 'matematica'),
('Qual a raiz quadrada de 144?', '12', '10', '14', '11', 'MEDIA', 'matematica'),
('Se um quadrado tem 4cm de lado, qual sua área?', '16 cm²', '8 cm²', '20 cm²', '24 cm²', 'MEDIA', 'matematica'),
('Quanto é $20 - (5 \times 2)$?', '10', '15', '20', '5', 'MEDIA', 'matematica'),
('Qual o valor de $1/2$ em decimal?', '0.5', '1.2', '0.2', '0.1', 'MEDIA', 'matematica');

-- Inserções para a categoria 'matematica' (Dificuldade: DIFICIL)
INSERT INTO perguntas (questao, correta, falsa1, falsa2, falsa3, dificuldade, categoria) VALUES
('Quanto é $4 \times 3 \times 2 \times 1$?', '24', '12', '10', '32', 'DIFICIL', 'matematica'),
('Qual o resultado de $1000 \div 50$?', '20', '10', '50', '100', 'DIFICIL', 'matematica'),
('Qual a fórmula do teorema de Pitágoras?', '$a^2+b^2=c^2$', '$a+b=c$', '$a \times b = c$', '$a \div b = c$', 'DIFICIL', 'matematica'),
('Qual a área de um círculo com raio 3?', '9π', '6π', '3π', '12π', 'DIFICIL', 'matematica'),
('Se $3x - 1 = 8$, qual o valor de x?', '3', '2', '1', '4', 'DIFICIL', 'matematica'),
('Qual o resultado de $\sqrt{64} + 2^3$?', '16', '12', '14', '18', 'DIFICIL', 'matematica');

-- Inserções para a categoria 'portugues' (Dificuldade: FACIL)
INSERT INTO perguntas (questao, correta, falsa1, falsa2, falsa3, dificuldade, categoria) VALUES
('Qual o plural de "casa"?', 'Casas', 'Casa', 'Caseiros', 'Casinhas', 'FACIL', 'portugues'),
('Qual o oposto de "aberto"?', 'Fechado', 'Claro', 'Escuro', 'Vazio', 'FACIL', 'portugues'),
('Qual o sinônimo de "bonito"?', 'Belo', 'Feio', 'Estranho', 'Pequeno', 'FACIL', 'portugues'),
('Qual a palavra que completa a frase: "Eu _______ um bolo"?', 'Comi', 'Comendo', 'Comer', 'Comeria', 'FACIL', 'portugues'),
('Qual o verbo na frase "O sol brilha"?', 'Brilha', 'Sol', 'O', 'Brilhando', 'FACIL', 'portugues');

-- Inserções para a categoria 'portugues' (Dificuldade: MEDIA)
INSERT INTO perguntas (questao, correta, falsa1, falsa2, falsa3, dificuldade, categoria) VALUES
('Qual o plural de "cidadão"?', 'Cidadãos', 'Cidadões', 'Cidadãs', 'Cidadão', 'MEDIA', 'portugues'),
('Qual a forma correta de escrever a palavra "sessão"?', 'Sessão', 'Seção', 'Cessão', 'Secção', 'MEDIA', 'portugues'),
('O que é uma interjeição?', 'Uma palavra que expressa emoção', 'Uma palavra que nomeia coisas', 'Uma palavra que liga frases', 'Uma palavra que descreve', 'MEDIA', 'portugues'),
('Qual o coletivo de "abelhas"?', 'Enxame', 'Cardume', 'Alcateia', 'Matilha', 'MEDIA', 'portugues'),
('Qual o antônimo de "benevolente"?', 'Maligno', 'Bondoso', 'Gabarola', 'Generoso', 'MEDIA', 'portugues');

-- Inserções para a categoria 'portugues' (Dificuldade: DIFICIL)
INSERT INTO perguntas (questao, correta, falsa1, falsa2, falsa3, dificuldade, categoria) VALUES
('Em qual das opções a concordância verbal está incorreta?', 'Haviam muitos alunos na sala', 'Havia muitos alunos na sala', 'Eles haviam estudado', 'As crianças haviam comido', 'DIFICIL', 'portugues'),
('Qual a figura de linguagem presente na frase: "Ele é um burro"?', 'Metáfora', 'Personificação', 'Eufemismo', 'Ironia', 'DIFICIL', 'portugues'),
('Qual a palavra com a acentuação incorreta?', 'Herói', 'Lápis', 'Café', 'Rúbrica', 'DIFICIL', 'portugues'),
('O que é uma oração subordinada substantiva subjetiva?', 'Aquela que funciona como sujeito da oração principal', 'Aquela que funciona como objeto direto da oração principal', 'Aquela que funciona como adjunto adverbial', 'Aquela que funciona como predicativo do sujeito', 'DIFICIL', 'portugues'),
('Qual o plural de "couve-flor"?', 'Couves-flores', 'Couve-flores', 'Couve-flor', 'Couves-flor', 'DIFICIL', 'portugues'),
('Qual a palavra que pertence a uma classe diferente das demais: carro, mesa, bonito, amor?', 'Bonito', 'Carro', 'Mesa', 'Amor', 'DIFICIL', 'portugues');

-- Inserções para a categoria 'tecnologia' (Dificuldade: FACIL)
INSERT INTO perguntas (questao, correta, falsa1, falsa2, falsa3, dificuldade, categoria) VALUES
('O que significa a sigla "WWW"?', 'World Wide Web', 'World White Web', 'Wide World Web', 'Web World Wide', 'FACIL', 'tecnologia'),
('Qual o nome da empresa criadora do sistema operacional Windows?', 'Microsoft', 'Apple', 'Google', 'IBM', 'FACIL', 'tecnologia'),
('O que é um "mouse"?', 'Um periférico de computador', 'Um tipo de software', 'Uma linguagem de programação', 'Uma peça interna do computador', 'FACIL', 'tecnologia'),
('O que é um "giga"?', 'Um prefixo de unidade de medida de dados', 'Um tipo de vírus', 'Um tipo de programa', 'Uma peça de hardware', 'FACIL', 'tecnologia'),
('Qual o nome do famoso buscador da internet?', 'Google', 'Bing', 'Yahoo', 'DuckDuckGo', 'FACIL', 'tecnologia');

-- Inserções para a categoria 'tecnologia' (Dificuldade: MEDIA)
INSERT INTO perguntas (questao, correta, falsa1, falsa2, falsa3, dificuldade, categoria) VALUES
('Qual o nome da tecnologia que permite a conexão de dispositivos sem fio?', 'Wi-Fi', 'Bluetooth', 'Infravermelho', 'Rádio', 'MEDIA', 'tecnologia'),
('Qual o nome da empresa criadora do Linux?', 'Linus Torvalds', 'Richard Stallman', 'Bill Gates', 'Steve Jobs', 'MEDIA', 'tecnologia'),
('O que é um "cookie" na internet?', 'Pequenos arquivos de dados armazenados no navegador', 'Um tipo de vírus', 'Um programa de segurança', 'Um tipo de software', 'MEDIA', 'tecnologia'),
('Qual o nome da linguagem de programação usada no desenvolvimento de jogos?', 'C++', 'Python', 'Java', 'HTML', 'MEDIA', 'tecnologia'),
('Qual o nome do primeiro computador programável do mundo?', 'ENIAC', 'Apple I', 'IBM PC', 'Macintosh', 'MEDIA', 'tecnologia');

-- Inserções para a categoria 'tecnologia' (Dificuldade: DIFICIL)
INSERT INTO perguntas (questao, correta, falsa1, falsa2, falsa3, dificuldade, categoria) VALUES
('Qual o nome do inventor do computador eletrônico digital?', 'John Atanasoff', 'Alan Turing', 'Charles Babbage', 'Konrad Zuse', 'DIFICIL', 'tecnologia'),
('O que é a "Lei de Moore"?', 'Observação de que o número de transistores em um microchip dobra a cada dois anos', 'Uma lei sobre o consumo de energia', 'Uma lei de física', 'Uma lei de software', 'DIFICIL', 'tecnologia'),
('Qual o nome do protocolo de internet que garante a segurança das transações?', 'HTTPS', 'HTTP', 'FTP', 'SMTP', 'DIFICIL', 'tecnologia'),
('O que é um "blockchain"?', 'Uma tecnologia de registro de dados distribuída e descentralizada', 'Um tipo de vírus', 'Uma linguagem de programação', 'Um tipo de hardware', 'DIFICIL', 'tecnologia'),
('Qual o nome da empresa que desenvolveu a linguagem de programação Java?', 'Sun Microsystems', 'Oracle', 'Microsoft', 'IBM', 'DIFICIL', 'tecnologia'),
('Qual o nome do primeiro mouse de computador?', 'Alto', 'Apple', 'Xerox', 'IBM', 'DIFICIL', 'tecnologia');

-- Inserções para a categoria 'curiosidades' (Dificuldade: FACIL)
INSERT INTO perguntas (questao, correta, falsa1, falsa2, falsa3, dificuldade, categoria) VALUES
('O que é que tem dentes, mas não morde?', 'O pente', 'A colher', 'A faca', 'A tesoura', 'FACIL', 'curiosidades'),
('Qual a cor mais comum em bandeiras nacionais?', 'Vermelho', 'Azul', 'Branco', 'Verde', 'FACIL', 'curiosidades'),
('Qual o animal com maior tempo de gestação?', 'Elefante', 'Baleia', 'Girafa', 'Hipopótamo', 'FACIL', 'curiosidades'),
('Qual o nome da famosa cidade flutuante no Brasil?', 'Veneza Brasileira', 'Veneza', 'Manaus', 'Belém', 'FACIL', 'curiosidades'),
('Qual o nome da montanha-russa mais rápida do mundo?', 'Formula Rossa', 'Kingda Ka', 'Top Thrill Dragster', 'Fury 325', 'FACIL', 'curiosidades');

-- Inserções para a categoria 'curiosidades' (Dificuldade: MEDIA)
INSERT INTO perguntas (questao, correta, falsa1, falsa2, falsa3, dificuldade, categoria) VALUES
('O que é o "Silo do Fim do Mundo"?', 'Um banco de sementes para a humanidade', 'Um bunker subterrâneo', 'Uma caverna no Alasca', 'Uma pirâmide', 'MEDIA', 'curiosidades'),
('Qual a temperatura de fusão do ouro?', '$1064 \text{°C}$', '$500 \text{°C}$', '$1500 \text{°C}$', '$2000 \text{°C}$', 'MEDIA', 'curiosidades'),
('Qual o nome do animal que não tem o estômago?', 'Estrela do mar', 'Polvo', 'Lula', 'Caranguejo', 'MEDIA', 'curiosidades'),
('O que é um "calafrio"?', 'Uma sensação de frio', 'Uma doença', 'Um tipo de dor de cabeça', 'Um tipo de febre', 'MEDIA', 'curiosidades'),
('Qual o nome do país que tem a maior reserva de água doce do mundo?', 'Brasil', 'Rússia', 'Canadá', 'China', 'MEDIA', 'curiosidades');

-- Inserções para a categoria 'curiosidades' (Dificuldade: DIFICIL)
INSERT INTO perguntas (questao, correta, falsa1, falsa2, falsa3, dificuldade, categoria) VALUES
('Qual o nome do único planeta no sistema solar que gira no sentido horário?', 'Vênus', 'Marte', 'Júpiter', 'Terra', 'DIFICIL', 'curiosidades'),
('O que é a "Síndrome de Stendhal"?', 'Uma reação psicossomática a obras de arte', 'Uma doença de pele', 'Uma doença mental', 'Uma doença genética', 'DIFICIL', 'curiosidades'),
('Qual o nome da única cidade do mundo que tem dois fusos horários?', 'Tóquio', 'Xangai', 'Londres', 'Rio de Janeiro', 'DIFICIL', 'curiosidades'),
('Qual o nome da maior estátua do mundo?', 'Estátua da Unidade', 'Estátua da Liberdade', 'Cristo Redentor', 'Buda de Leshan', 'DIFICIL', 'curiosidades'),
('Qual o nome do animal que tem o veneno mais potente do mundo?', 'Cobra taipan', 'Água-viva', 'Aranha armadeira', 'Escorpião', 'DIFICIL', 'curiosidades'),
('O que é a "Teoria dos Seis Graus de Separação"?', 'A teoria de que todas as pessoas estão ligadas umas às outras em seis passos', 'Uma teoria da física', 'Uma teoria da biologia', 'Uma teoria da psicologia', 'DIFICIL', 'curiosidades');

-- Inserções para a categoria 'esportes' (Dificuldade: FACIL)
INSERT INTO perguntas (questao, correta, falsa1, falsa2, falsa3, dificuldade, categoria) VALUES
('Quantos anéis existem na bandeira olímpica?', '5', '4', '6', '3', 'FACIL', 'esportes'),
('Qual a cor da faixa que representa o Jiu-Jitsu?', 'Preta', 'Branca', 'Vermelha', 'Azul', 'FACIL', 'esportes'),
('Em qual esporte se usa um capacete e um taco?', 'Hóquei no gelo', 'Futebol americano', 'Basquete', 'Vôlei', 'FACIL', 'esportes'),
('Qual o nome do jogador de futebol brasileiro que é conhecido como "Rei do Futebol"?', 'Pelé', 'Romário', 'Ronaldo', 'Neymar', 'FACIL', 'esportes'),
('Qual o nome da principal corrida de ciclismo do mundo?', 'Tour de France', 'Giro d''Italia', 'La Vuelta', 'Paris-Roubaix', 'FACIL', 'esportes');

-- Inserções para a categoria 'esportes' (Dificuldade: MEDIA)
INSERT INTO perguntas (questao, correta, falsa1, falsa2, falsa3, dificuldade, categoria) VALUES
('Qual o nome do atleta jamaicano recordista mundial de 100m e 200m rasos?', 'Usain Bolt', 'Tyson Gay', 'Asafa Powell', 'Yohan Blake', 'MEDIA', 'esportes'),
('Em qual esporte a "Serena Williams" se destaca?', 'Tênis', 'Basquete', 'Futebol', 'Vôlei', 'MEDIA', 'esportes'),
('Quantas medalhas de ouro o Brasil conquistou nas Olimpíadas de 2016?', '7', '10', '15', '20', 'MEDIA', 'esportes'),
('Qual o nome da competição de futebol mais importante da Europa?', 'Liga dos Campeões da UEFA', 'Copa Libertadores', 'Copa do Mundo', 'Eurocopa', 'MEDIA', 'esportes'),
('Qual o nome do esporte que se pratica com um skate?', 'Skateboarding', 'Surf', 'Snowboard', 'Ciclismo', 'MEDIA', 'esportes');

-- Inserções para a categoria 'esportes' (Dificuldade: DIFICIL)
INSERT INTO perguntas (questao, correta, falsa1, falsa2, falsa3, dificuldade, categoria) VALUES
('Qual o nome do time de futebol que conquistou mais títulos na Liga dos Campeões da UEFA?', 'Real Madrid', 'Barcelona', 'Milan', 'Liverpool', 'DIFICIL', 'esportes'),
('Qual o nome do lendário jogador de basquete conhecido como "o maior de todos os tempos"?', 'Michael Jordan', 'LeBron James', 'Kobe Bryant', 'Magic Johnson', 'DIFICIL', 'esportes'),
('Qual o nome do atleta que conquistou mais medalhas olímpicas?', 'Michael Phelps', 'Usain Bolt', 'Carl Lewis', 'Larisa Latynina', 'DIFICIL', 'esportes'),
('Qual o nome do evento em que o Brasil conquistou a medalha de ouro no futebol nas Olimpíadas de 2016?', 'Maracanã', 'Mineirão', 'Arena Corinthians', 'Estádio Olímpico', 'DIFICIL', 'esportes'),
('Qual o nome do esporte que tem a regra de "impedimento"?', 'Futebol', 'Futebol americano', 'Basquete', 'Vôlei', 'DIFICIL', 'esportes'),
('Qual o nome do famoso ginasta brasileiro que conquistou a medalha de ouro no solo nas Olimpíadas de 2016?', 'Arthur Zanetti', 'Arthur Nory', 'Diego Hypólito', 'Francisco Barreto', 'DIFICIL', 'esportes');

-- Inserções para a categoria 'raciocinio-logico' (Dificuldade: FACIL)
INSERT INTO perguntas (questao, correta, falsa1, falsa2, falsa3, dificuldade, categoria) VALUES
('Qual o próximo número da sequência: 10, 20, 30, ...?', '40', '50', '60', '70', 'FACIL', 'raciocinio-logico'),
('Se eu tenho 4 ovos, e um quebra, quantos ovos eu tenho?', '3', '4', '1', '2', 'FACIL', 'raciocinio-logico'),
('O que é que nasce grande e morre pequeno?', 'O lápis', 'A vela', 'O giz', 'O sabão', 'FACIL', 'raciocinio-logico'),
('Qual o próximo número da sequência: 1, 3, 5, 7, ...?', '9', '8', '10', '12', 'FACIL', 'raciocinio-logico'),
('O que é que tem olhos, mas não enxerga?', 'A agulha', 'O espelho', 'O sapato', 'A fechadura', 'FACIL', 'raciocinio-logico');

-- Inserções para a categoria 'raciocinio-logico' (Dificuldade: MEDIA)
INSERT INTO perguntas (questao, correta, falsa1, falsa2, falsa3, dificuldade, categoria) VALUES
('Se um prédio tem 10 andares, e o elevador sobe 2 andares a cada 2 segundos, quanto tempo leva para chegar ao 10º andar?', '18 segundos', '20 segundos', '10 segundos', '5 segundos', 'MEDIA', 'raciocinio-logico'),
('Uma família tem 5 filhas. Cada filha tem um irmão. Quantos filhos a família tem ao todo?', '6', '5', '10', '1', 'MEDIA', 'raciocinio-logico'),
('Qual o próximo número da sequência: 1, 2, 4, 7, 11, ...?', '16', '15', '14', '13', 'MEDIA', 'raciocinio-logico'),
('O que é que pode ser quebrado, mas nunca tocado?', 'A promessa', 'O copo', 'A taça', 'O vidro', 'MEDIA', 'raciocinio-logico'),
('Se você tem 3 maçãs e tira 2, com quantas você fica?', '2', '1', '3', '5', 'MEDIA', 'raciocinio-logico');

-- Inserções para a categoria 'raciocinio-logico' (Dificuldade: DIFICIL)
INSERT INTO perguntas (questao, correta, falsa1, falsa2, falsa3, dificuldade, categoria) VALUES
('Se um carro anda a 60 km/h, qual a velocidade de um carro que anda o dobro da velocidade?', '120 km/h', '60 km/h', '180 km/h', '240 km/h', 'DIFICIL', 'raciocinio-logico'),
('O que é que tem anéis, mas não tem dedos?', 'O telefone', 'O anel', 'O relógio', 'A chave', 'DIFICIL', 'raciocinio-logico'),
('Qual o próximo número da sequência: 1, 4, 9, 16, 25, ...?', '36', '30', '40', '45', 'DIFICIL', 'raciocinio-logico'),
('O que é que pode viajar por todo o mundo, mas fica sempre no mesmo lugar?', 'O selo', 'O mapa', 'O passaporte', 'O visto', 'DIFICIL', 'raciocinio-logico'),
('Se um pai e um filho viajam para uma cidade e o filho é o pai do filho, como isso é possível?', 'O filho é o pai do filho', 'O pai e o filho são a mesma pessoa', 'O pai é o filho do pai', 'O pai é o filho do filho', 'DIFICIL', 'raciocinio-logico'),
('Qual a diferença entre uma cadeira e um carro?', 'Um carro tem rodas', 'Uma cadeira é de madeira', 'Um carro tem portas', 'Uma cadeira é de metal', 'DIFICIL', 'raciocinio-logico');

-- Inserções para a categoria 'historia' (Dificuldade: FACIL)
INSERT INTO perguntas (questao, correta, falsa1, falsa2, falsa3, dificuldade, categoria) VALUES
('Em que ano o Brasil se tornou independente?', '1822', '1889', '1500', '1945', 'FACIL', 'historia'),
('Quem foi o líder da Marcha do Sal na Índia?', 'Mahatma Gandhi', 'Jawaharlal Nehru', 'Indira Gandhi', 'Subhas Chandra Bose', 'FACIL', 'historia'),
('Qual o nome do famoso navegador que descobriu o Brasil?', 'Pedro Álvares Cabral', 'Cristóvão Colombo', 'Vasco da Gama', 'Fernão de Magalhães', 'FACIL', 'historia'),
('Qual o nome do famoso general romano que governou a Gália?', 'Júlio César', 'Augusto', 'Nero', 'Marco Aurélio', 'FACIL', 'historia'),
('Qual o evento que marcou o fim da Idade Média?', 'Queda de Constantinopla', 'Revolução Francesa', 'Descobrimento da América', 'Reforma Protestante', 'FACIL', 'historia');

-- Inserções para a categoria 'historia' (Dificuldade: MEDIA)
INSERT INTO perguntas (questao, correta, falsa1, falsa2, falsa3, dificuldade, categoria) VALUES
('Qual o nome da primeira mulher a governar o Egito?', 'Hatshepsut', 'Cleópatra', 'Nefertiti', 'Núbia', 'MEDIA', 'historia'),
('O que foi a Peste Negra?', 'Uma pandemia no século XIV', 'Um tipo de praga de gafanhotos', 'Uma doença de pele', 'Uma guerra', 'MEDIA', 'historia'),
('Quem assinou a Lei Áurea no Brasil?', 'Princesa Isabel', 'Dom Pedro II', 'Dom Pedro I', 'Getúlio Vargas', 'MEDIA', 'historia'),
('Qual o nome do primeiro imperador romano?', 'Augusto', 'Júlio César', 'Nero', 'Marco Aurélio', 'MEDIA', 'historia'),
('O que foi a Doutrina Monroe?', 'Uma política externa dos EUA para a América', 'Um tratado de paz europeu', 'Uma doutrina religiosa', 'Uma teoria econômica', 'MEDIA', 'historia');

-- Inserções para a categoria 'historia' (Dificuldade: DIFICIL)
INSERT INTO perguntas (questao, correta, falsa1, falsa2, falsa3, dificuldade, categoria) VALUES
('Qual a data da Proclamação da República do Brasil?', '15 de novembro de 1889', '7 de setembro de 1822', '22 de abril de 1500', '13 de maio de 1888', 'DIFICIL', 'historia'),
('Qual o nome do famoso líder mongol que criou o maior império contíguo da história?', 'Gengis Khan', 'Kublai Khan', 'Atila, o Huno', 'Tamerlão', 'DIFICIL', 'historia'),
('Onde o Tratado de Tordesilhas foi assinado?', 'Tordesilhas (Espanha)', 'Lisboa (Portugal)', 'Madrid (Espanha)', 'Roma (Itália)', 'DIFICIL', 'historia'),
('O que foi o Iluminismo?', 'Um movimento cultural e filosófico do século XVIII', 'Um período de grandes descobertas científicas', 'Uma guerra religiosa', 'Um movimento artístico', 'DIFICIL', 'historia'),
('O que foi a Guerra dos Cem Anos?', 'Uma série de conflitos entre a Inglaterra e a França', 'Uma guerra entre a Espanha e a Inglaterra', 'Uma guerra entre a França e a Espanha', 'Uma guerra entre a Alemanha e a França', 'DIFICIL', 'historia'),
('Qual o nome do imperador romano que tornou o cristianismo a religião oficial do Império?', 'Teodósio I', 'Constantino', 'Nero', 'Augusto', 'DIFICIL', 'historia');

-- Inserções para a categoria 'cultura-pop' (Dificuldade: FACIL)
INSERT INTO perguntas (questao, correta, falsa1, falsa2, falsa3, dificuldade, categoria) VALUES
('Qual o nome do personagem principal da série "Friends"?', 'Rachel Green', 'Monica Geller', 'Phoebe Buffay', 'Joey Tribbiani', 'FACIL', 'cultura-pop'),
('Qual o nome do famoso vilão do filme "O Poderoso Chefão"?', 'Vito Corleone', 'Michael Corleone', 'Sonny Corleone', 'Fredo Corleone', 'FACIL', 'cultura-pop'),
('Qual o nome da banda que tem a música "Stairway to Heaven"?', 'Led Zeppelin', 'Queen', 'The Beatles', 'Pink Floyd', 'FACIL', 'cultura-pop'),
('Qual o nome da cidade fictícia onde se passa a série "Breaking Bad"?', 'Albuquerque', 'Springfield', 'South Park', 'Metropolis', 'FACIL', 'cultura-pop'),
('Qual o nome do ator que interpretou o personagem "Wolverine" nos filmes?', 'Hugh Jackman', 'Ryan Reynolds', 'Chris Hemsworth', 'Robert Downey Jr.', 'FACIL', 'cultura-pop');

-- Inserções para a categoria 'cultura-pop' (Dificuldade: MEDIA)
INSERT INTO perguntas (questao, correta, falsa1, falsa2, falsa3, dificuldade, categoria) VALUES
('Qual o nome do primeiro filme da série "Star Wars"?', 'Uma Nova Esperança', 'O Império Contra-Ataca', 'O Retorno de Jedi', 'A Ameaça Fantasma', 'MEDIA', 'cultura-pop'),
('Qual o nome do personagem principal do filme "Forrest Gump"?', 'Forrest Gump', 'Jack Dawson', 'Tyler Durden', 'Neo', 'MEDIA', 'cultura-pop'),
('Qual o nome da banda que tem a famosa música "Sweet Child o'' Mine"?', 'Guns N'' Roses', 'Aerosmith', 'Bon Jovi', 'AC/DC', 'MEDIA', 'cultura-pop'),
('Qual o nome da série da Netflix que conta a história de Eleven e seus amigos?', 'Stranger Things', 'Dark', 'Lúcifer', 'The Witcher', 'MEDIA', 'cultura-pop'),
('Qual o nome do ator que interpretou o personagem "Tyler Durden" no filme "Clube da Luta"?', 'Brad Pitt', 'Edward Norton', 'Christian Bale', 'Leonardo DiCaprio', 'MEDIA', 'cultura-pop');

-- Inserções para a categoria 'cultura-pop' (Dificuldade: DIFICIL)
INSERT INTO perguntas (questao, correta, falsa1, falsa2, falsa3, dificuldade, categoria) VALUES
('Qual a verdadeira identidade do personagem "Coringa"?', 'Jack Napier', 'Bruce Wayne', 'Clark Kent', 'Barry Allen', 'DIFICIL', 'cultura-pop'),
('Qual foi o primeiro longa-metragem de animação da história?', 'Branca de Neve e os Sete Anões', 'Toy Story', 'A Bela e a Fera', 'O Rei Leão', 'DIFICIL', 'cultura-pop'),
('Qual o nome da cidade fictícia onde se passa a série "The Simpsons"?', 'Springfield', 'Quahog', 'South Park', 'Metropolis', 'DIFICIL', 'cultura-pop'),
('Qual o nome do criador da série de TV "Game of Thrones"?', 'David Benioff e D. B. Weiss', 'George R. R. Martin', 'Peter Jackson', 'Steven Moffat', 'DIFICIL', 'cultura-pop'),
('Qual o nome da série de TV de comédia que tem a frase: "I''ll be back"?', 'The Simpsons', 'Friends', 'Seinfeld', 'The Big Bang Theory', 'DIFICIL', 'cultura-pop'),
('Qual o nome da atriz que interpretou o personagem "Eleven" na série "Stranger Things"?', 'Millie Bobby Brown', 'Winona Ryder', 'Natalia Dyer', 'Maya Hawke', 'DIFICIL', 'cultura-pop');

-- Inserções para a categoria 'geografia' (Dificuldade: FACIL)
INSERT INTO perguntas (questao, correta, falsa1, falsa2, falsa3, dificuldade, categoria) VALUES
('Qual o nome do maior oceano do mundo?', 'Pacífico', 'Atlântico', 'Índico', 'Ártico', 'FACIL', 'geografia'),
('Qual o nome do planeta conhecido como o Planeta Vermelho?', 'Marte', 'Júpiter', 'Vênus', 'Saturno', 'FACIL', 'geografia'),
('Qual a capital da França?', 'Paris', 'Berlim', 'Londres', 'Madri', 'FACIL', 'geografia'),
('Qual o nome do rio mais longo do mundo?', 'Rio Nilo', 'Rio Amazonas', 'Rio Tietê', 'Rio Sena', 'FACIL', 'geografia'),
('Qual o continente mais populoso do mundo?', 'Ásia', 'África', 'América', 'Europa', 'FACIL', 'geografia');

-- Inserções para a categoria 'geografia' (Dificuldade: MEDIA)
INSERT INTO perguntas (questao, correta, falsa1, falsa2, falsa3, dificuldade, categoria) VALUES
('Em qual hemisfério está a maior parte do Brasil?', 'Hemisfério Sul', 'Hemisfério Norte', 'Hemisfério Oriental', 'Hemisfério Ocidental', 'MEDIA', 'geografia'),
('Qual a maior ilha do mundo?', 'Groenlândia', 'Madagascar', 'Bornéu', 'Nova Guiné', 'MEDIA', 'geografia'),
('Qual o maior país da América do Sul?', 'Brasil', 'Argentina', 'Chile', 'Colômbia', 'MEDIA', 'geografia'),
('Qual o nome do estreito que separa a Ásia da América do Norte?', 'Estreito de Bering', 'Estreito de Magalhães', 'Canal do Panamá', 'Canal de Suez', 'MEDIA', 'geografia'),
('Qual o nome do deserto mais árido do mundo?', 'Deserto do Atacama', 'Deserto do Saara', 'Deserto de Gobi', 'Deserto de Kalahari', 'MEDIA', 'geografia');

-- Inserções para a categoria 'geografia' (Dificuldade: DIFICIL)
INSERT INTO perguntas (questao, correta, falsa1, falsa2, falsa3, dificuldade, categoria) VALUES
('Qual a cidade mais populosa do mundo?', 'Tóquio', 'Xangai', 'Delhi', 'São Paulo', 'DIFICIL', 'geografia'),
('Qual a capital da Austrália?', 'Camberra', 'Sydney', 'Melbourne', 'Brisbane', 'DIFICIL', 'geografia'),
('Qual o nome do maior vulcão ativo do mundo?', 'Mauna Loa', 'Vesúvio', 'Monte Fuji', 'Popocatépetl', 'DIFICIL', 'geografia'),
('Qual o nome do bioma caracterizado por grandes savanas e árvores espalhadas?', 'Cerrado', 'Floresta Amazônica', 'Caatinga', 'Pampa', 'DIFICIL', 'geografia'),
('Qual é a maior bacia hidrográfica do mundo?', 'Bacia Amazônica', 'Bacia do Congo', 'Bacia do Mississipi', 'Bacia do Nilo', 'DIFICIL', 'geografia'),
('Qual o menor país do mundo em área territorial?', 'Vaticano', 'Mônaco', 'Nauru', 'San Marino', 'DIFICIL', 'geografia');

-- Inserções para a categoria 'curiosidades' (Dificuldade: FACIL)
INSERT INTO perguntas (questao, correta, falsa1, falsa2, falsa3, dificuldade, categoria) VALUES
('Qual o animal que tem 3 corações?', 'Polvo', 'Tubarão', 'Gato', 'Cachorro', 'FACIL', 'curiosidades'),
('Qual a cor de um panda?', 'Preto e branco', 'Verde e branco', 'Vermelho e preto', 'Azul e branco', 'FACIL', 'curiosidades'),
('Qual o único mamífero que pode voar?', 'Morcego', 'Pássaro', 'Inseto', 'Peixe', 'FACIL', 'curiosidades'),
('Quantos lados tem um triângulo?', '3', '4', '5', '6', 'FACIL', 'curiosidades'),
('O que a luz do sol contém?', 'Vitamina D', 'Vitamina C', 'Vitamina A', 'Vitamina E', 'FACIL', 'curiosidades');

-- Inserções para a categoria 'curiosidades' (Dificuldade: MEDIA)
INSERT INTO perguntas (questao, correta, falsa1, falsa2, falsa3, dificuldade, categoria) VALUES
('Qual o nome do animal que pode viver mais de 100 anos?', 'Tartaruga', 'Elefante', 'Crocodilo', 'Baleia', 'MEDIA', 'curiosidades'),
('Qual a parte do corpo que não pode ser quebrada?', 'Nenhuma parte do corpo pode ser quebrada', 'A cabeça', 'O pescoço', 'O braço', 'MEDIA', 'curiosidades'),
('Qual o nome do único animal que não salta?', 'Elefante', 'Canguru', 'Coelho', 'Gato', 'MEDIA', 'curiosidades'),
('Qual o animal que tem o maior cérebro em relação ao corpo?', 'Formiga', 'Elefante', 'Baleia', 'Golfinho', 'MEDIA', 'curiosidades'),
('Qual o país que tem a maior população de ursos polares?', 'Canadá', 'Rússia', 'Noruega', 'Groenlândia', 'MEDIA', 'curiosidades');

-- Inserções para a categoria 'curiosidades' (Dificuldade: DIFICIL)
INSERT INTO perguntas (questao, correta, falsa1, falsa2, falsa3, dificuldade, categoria) VALUES
('Qual o nome do único planeta no sistema solar que gira no sentido horário?', 'Vênus', 'Marte', 'Júpiter', 'Terra', 'DIFICIL', 'curiosidades'),
('O que é a "Síndrome de Stendhal"?', 'Uma reação psicossomática a obras de arte', 'Uma doença de pele', 'Uma doença mental', 'Uma doença genética', 'DIFICIL', 'curiosidades'),
('Qual o nome da única cidade do mundo que tem dois fusos horários?', 'Tóquio', 'Xangai', 'Londres', 'Rio de Janeiro', 'DIFICIL', 'curiosidades'),
('Qual o nome da maior estátua do mundo?', 'Estátua da Unidade', 'Estátua da Liberdade', 'Cristo Redentor', 'Buda de Leshan', 'DIFICIL', 'curiosidades'),
('Qual o nome do animal que tem o veneno mais potente do mundo?', 'Cobra taipan', 'Água-viva', 'Aranha armadeira', 'Escorpião', 'DIFICIL', 'curiosidades'),
('O que é a "Teoria dos Seis Graus de Separação"?', 'A teoria de que todas as pessoas estão ligadas umas às outras em seis passos', 'Uma teoria da física', 'Uma teoria da biologia', 'Uma teoria da psicologia', 'DIFICIL', 'curiosidades');
