//
//  ViewController.swift
//  AlcoolOuGasolina
//
//  Created by William Douglas Costa Gomes on 03/04/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var result: UILabel!
    @IBOutlet weak var alcoolPrice: UITextField!
    @IBOutlet weak var gasolinaPrice: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func calculeResult(_ sender: Any) {
        if let priceAlcool = alcoolPrice.text {
            if let priceGasolina = gasolinaPrice.text {
                let resultValidation = self.validateFields(priceAlcool: priceAlcool, priceGasolina: priceGasolina)
                
                if(resultValidation){
                    self.calculeBestPrice(priceAlcool: priceAlcool.replacingOccurrences(of: ",", with: "."), priceGasolina: priceGasolina.replacingOccurrences(of: ",", with: "."))
                }
                else{
                    self.result.text = "Digite os preços para calcular!"
                }
            }
        }
        
    }
    
    func validateFields(priceAlcool: String, priceGasolina: String) -> Bool{
        return !priceAlcool.isEmpty && !priceGasolina.isEmpty
    }
    
    func calculeBestPrice(priceAlcool: String, priceGasolina: String) {
        if let alcoolValue = Double(priceAlcool) {
            if let gasolinaValue = Double(priceGasolina) {
                if alcoolValue / gasolinaValue >= 0.7 {
                    self.result.text = "É melhor utilizar gasolina!"
                }
                else {
                    self.result.text = "É melhor utilizar álcool!"
                }
            }
        }
    }
}

