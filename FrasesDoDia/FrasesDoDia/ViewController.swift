//
//  ViewController.swift
//  FrasesDoDia
//
//  Created by William Douglas Costa Gomes on 28/03/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var resultPhrase: UILabel!
    var lastPhrase: Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func newPhrase(_ sender: Any) {
        var phrases: [String] = []
        phrases.append("Não adianta se esfregar muito no banho, o cheiro de fracasso não irá sair de você")
        phrases.append("Hoje estão rindo do seu esforço, amanhã estarão rindo do seu fracasso")
        phrases.append("Para você ficar ruim, terá que melhorar bastante")
        phrases.append("Se vai se atrasar, se atrase de verdade, não 5 minutos. Atrasesse 1 hora e saborei o seu café da manhã")
        
        var phrase = Int(arc4random_uniform(4))
        while(lastPhrase == phrase){
            phrase = Int(arc4random_uniform(4))
        }
        
        lastPhrase = phrase
        resultPhrase.text = phrases[lastPhrase]
    }
}

