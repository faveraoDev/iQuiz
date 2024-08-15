//
//  ViewController.swift
//  iQuiz
//
//  Created by João Victor Mantese on 30/06/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var botaoIniciarQuiz: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configuraLayout()
    }

    func configuraLayout() {
        botaoIniciarQuiz.layer.cornerRadius = 12.0
        navigationItem.hidesBackButton = true
    }

}

