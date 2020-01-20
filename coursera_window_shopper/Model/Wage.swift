//
//  Wage.swift
//  coursera_window_shopper
//
//  Created by Muhammad Hashim on 1/19/20.
//  Copyright © 2020 Muhammad Hashim. All rights reserved.
//

import Foundation

public func getHours(forWage wage: Double, andPrice price: Double) -> Int{
    return Int(ceil(price / wage))
}

