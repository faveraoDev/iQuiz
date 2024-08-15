//
//  QuestaoViewController.swift
//  iQuiz
//
//  Created by João Victor Mantese on 30/06/24.
//

import UIKit

class QuestaoViewController: UIViewController {
    
    var pontuacao = 0
    var numeroQuestao = 0
    
    @IBOutlet weak var tituloQuestaoLabel: UILabel!
    
    @IBOutlet var botoesRespostas: [UIButton]!
    
    @IBAction func respostaBotaoPressionado(_ sender: UIButton) {
        let escolhaUsuario = sender.tag
        
        if escolhaUsuario == questoes[numeroQuestao].respostaCorreta {
            pontuacao += 1
            sender.backgroundColor = UIColor.corDeFundoVerde
        } else {
            sender.backgroundColor = UIColor.corDeFundoVermelho
            botoesRespostas[questoes[numeroQuestao].respostaCorreta].backgroundColor = UIColor.corDeFundoVerde
        }
        
        if numeroQuestao < 6 {
            numeroQuestao += 1
            Timer.scheduledTimer(timeInterval: 0.75, target: self, selector: #selector(configurarQuestao), userInfo: nil, repeats: false)
        } else {
            Timer.scheduledTimer(timeInterval: 0.75, target: self, selector: #selector(navegaParaTelaDesempenho), userInfo: nil, repeats: false)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configurarLayout()
        randomizaQuestoes()
        configurarQuestao()
    }
    
    func configurarLayout() {
        navigationItem.hidesBackButton = true
        tituloQuestaoLabel.numberOfLines = 0
        tituloQuestaoLabel.textAlignment = .center
        
        for botao in botoesRespostas {
            botao.layer.cornerRadius = 12.0
        }
    }
    
    func randomizaQuestoes() {
        for i in 0..<(questoes.count - 1) {
                let randomIndex = Int(arc4random_uniform(UInt32(questoes.count - i))) + i
                if i != randomIndex {
                    questoes.swapAt(i, randomIndex)
                }
            }
    }
    
    @objc func navegaParaTelaDesempenho() {
        performSegue(withIdentifier: "irParaTelaDesempenho", sender: nil)
    }
    
    @objc func configurarQuestao() {
        tituloQuestaoLabel.text = questoes[numeroQuestao].titulo
        
        for botao in botoesRespostas {
            let tituloBotao = questoes[numeroQuestao].respostas[botao.tag]
            
            botao.setTitle(tituloBotao, for: .normal)
            
            botao.backgroundColor = UIColor(red: 116/255, green: 50/255, blue: 255/255, alpha: 1)
            
            botao.titleLabel?.textAlignment = .center
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let desempenhoVC = segue.destination as? DesempenhoViewController else { return }
        desempenhoVC.pontuacao = pontuacao
    }
}
