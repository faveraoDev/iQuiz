//
//  Questao.swift
//  iQuiz
//
//  Created by João Victor Mantese on 30/06/24.
//

import Foundation

struct Questao {
    var titulo: String
    var respostas: [String]
    var respostaCorreta: Int
}

var questoes: [Questao] = [
    Questao(titulo: "Qual feitiço para desarmar o seu oponente, em Harry Potter?", respostas: ["Expecto Patronum", "Avada Kedavra", "Expelliarmus"], respostaCorreta: 2),
    Questao(titulo: "Em que ano Vingadores Ultimato foi lançado?", respostas: ["2019", "2018", "2017"], respostaCorreta: 0),
    Questao(titulo: "Qual é o primeiro filme da franquia Star Wars (ordem de lançamento)?", respostas: ["Star Wars: A Ameaça Fantasma", "Star Wars: Uma Nova Esperança", "Star Wars: O Império Contra-Ataca"], respostaCorreta: 1),
    Questao(titulo: "Em que ano Avatar 2 foi lançado?", respostas: ["2014", "2022", "2023"], respostaCorreta: 1),
    Questao(titulo: "Qual o primeiro filme do MCU em que o Homem-Aranha apareceu?", respostas: ["Homem-Aranha: De Volta ao Lar", "Vingadores: Guerra Infinita", "Capitao América: Guerra Civil"], respostaCorreta: 2),
    Questao(titulo: "Qual o nome do ator que interpreta o Lúcifer na série da Netflix?", respostas: ["Tom Hiddleston", "Tom Ellis", "Tom Roberts"], respostaCorreta: 1),
    Questao(titulo: "Qual o nome da cidade em que se passa a série Stranger Things?", respostas: ["Hawkins", "Nashville", "Salem"], respostaCorreta: 0),
    Questao(titulo: "Em que ano o filme Titanic foi lançado?", respostas: ["1993", "1999", "1997"], respostaCorreta: 2),
    Questao(titulo: "Quantas temporadas a série Friends possui?", respostas: ["10", "11", "9"], respostaCorreta: 0),
    Questao(titulo: "Qual o nome do ator que interpreta o Joel em The Last of Us (Max)?", respostas: ["Oscar Isaac", "Pedro Pascal", "John Krasinski"], respostaCorreta: 1),
    Questao(titulo: "Quem dirigiu o filme A Origem (Inception), lançado em 2010?", respostas: ["Christopher Nolan", "Quentin Tarantino", "Steven Spielberg"], respostaCorreta: 0),
    Questao(titulo: "Qual destes títulos ganhou o Oscar de melhor filme em 2020?", respostas: ["Coringa", "1917", "Parasita"], respostaCorreta: 2),
    Questao(titulo: "Qual é a série em que uma IA é representada pela voz de Anthony Hopkins?", respostas: ["Black Mirror", "Westworld", "Altered Carbon"], respostaCorreta: 1),
    Questao(titulo: "Qual destes filmes ganhou o Oscar de Melhor Filme em 1994?", respostas: ["Pulp Fiction", "O Rei Leão", "Forrest Gump"], respostaCorreta: 2),
    Questao(titulo: "Qual é o nome do ator que interpreta Sherlock Holmes na série da BBC?", respostas: ["Benedict Cumberbatch", "Martin Freeman", "Tom Hiddleston"], respostaCorreta: 0),
    Questao(titulo: "Em qual filme Quentin Tarantino interpreta o personagem Mr. Brown?", respostas: ["Pulp Fiction", "Bastardos Inglórios", "Cães de Aluguel"], respostaCorreta: 2),
    Questao(titulo: "Quem dirigiu o filme Clube da Luta?", respostas: ["David Fincher", "Christopher Nolan", "Martin Scorsese"], respostaCorreta: 0),
    Questao(titulo: "Qual é o nome do planeta natal de Spock em Star Trek?", respostas: ["Endor", "Vulcano", "Alderaan"], respostaCorreta: 1),
    Questao(titulo: "Qual é o nome do diretor da trilogia original de Jurassic Park?", respostas: ["Steven Spielberg", "James Cameron", "George Lucas"], respostaCorreta: 0),
    Questao(titulo: "Quem interpretou o personagem principal no filme Gladiador?", respostas: ["Mel Gibson", "Russell Crowe", "Tom Hanks"], respostaCorreta: 1),
    Questao(titulo: "Qual o nome da atriz que interpreta a protagonista de Jogos Vorazes?", respostas: ["Kristen Stewart", "Emma Stone", "Jennifer Lawrence"], respostaCorreta: 2)
]
