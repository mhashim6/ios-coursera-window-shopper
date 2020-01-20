//
//  CurrencyText.swift
//  coursera_window_shopper
//
//  Created by Muhammad Hashim on 1/19/20.
//  Copyright © 2020 Muhammad Hashim. All rights reserved.
//

import UIKit

@IBDesignable
class CurrencyText: UITextField {
    
    override func prepareForInterfaceBuilder() {
        setup()
    }
    
    override func draw(_ rect: CGRect) {
        let symbolSize: CGFloat = 20
        let symbol = UILabel(frame: CGRect(x: 5, y: center(minus: symbolSize/2) , width: symbolSize, height: symbolSize))
        symbol.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        symbol.layer.cornerRadius = 5
        symbol.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        symbol.textAlignment = .center
        symbol.text = "$"
        symbol.clipsToBounds = true
        addSubview(symbol)
        
    }
    
    override func awakeFromNib() {
        setup()
    }
    
    func setup(){
        attributedPlaceholder = NSAttributedString(string: placeholder!, attributes: [.foregroundColor: UIColor.white])
        clipsToBounds = true
    }
    
}


extension UIView{
    func center(minus viewSize: CGFloat)->CGFloat {
        return frame.height/2 - viewSize
    }
}
