//
//  DesempenhoViewController.swift
//  iQuiz
//
//  Created by João Victor Mantese on 04/07/24.
//

import UIKit

class DesempenhoViewController: UIViewController {
    
    var pontuacao: Int?

    @IBOutlet weak var resultadoLabel: UILabel!
    
    @IBOutlet weak var percentualLabel: UILabel!
    
    @IBOutlet weak var botaoReiniciarQuiz: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configurarLayout()
        configurarDesempenho()
    }
    
    func configurarLayout() {
        botaoReiniciarQuiz.layer.cornerRadius = 12.0
        navigationItem.hidesBackButton = true
    }
    
    func configurarDesempenho() {
        guard let pontuacao = pontuacao else { return }
        
        let percentualAcertos = (pontuacao * 100) / 7
        
        resultadoLabel.text = "Você acertou \(pontuacao) de 7 questões"
        
        percentualLabel.text = "Percentual de acertos: \(percentualAcertos)%"
    }
}
