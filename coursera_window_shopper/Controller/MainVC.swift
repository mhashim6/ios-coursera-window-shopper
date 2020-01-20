//
//  ViewController.swift
//  coursera_window_shopper
//
//  Created by Muhammad Hashim on 1/19/20.
//  Copyright © 2020 Muhammad Hashim. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    @IBOutlet weak var wageTxt: CurrencyText!
    @IBOutlet weak var priceTxt: CurrencyText!
    
    @IBOutlet weak var resultLbl: UILabel!
    @IBOutlet weak var hoursLbl: UILabel!
    
    lazy var calcBtn:UIButton = {
        let btn = UIButton(frame: CGRect(x: 0, y: 0, width: self.view.frame.width, height: 60))
        btn.backgroundColor = #colorLiteral(red: 0.8822962642, green: 0.6123828888, blue: 0.2681727707, alpha: 1)
        btn.setTitle("Calculate", for: .normal)
        btn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        btn.addTarget(self, action: #selector(calculate), for: .touchUpInside)
        return btn
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resultLbl.isHidden = true
        hoursLbl.isHidden = true
        
        wageTxt.inputAccessoryView = calcBtn
        priceTxt.inputAccessoryView = calcBtn
        
    }
    
    @IBAction func clearClicked(_ sender: Any) {
        wageTxt.text = ""
        priceTxt.text = ""
        resultLbl.isHidden = true
        hoursLbl.isHidden = true
        
    }
    
    @objc func calculate(){
        if let wage = Double(wageTxt.text ?? ""), let price = Double(priceTxt.text ?? ""){
           let result = getHours(forWage: wage, andPrice: price)
            
            view.endEditing(true)
            resultLbl.text = String(result)
            resultLbl.isHidden = false
            hoursLbl.isHidden = false
        }
    }
    
    
}

