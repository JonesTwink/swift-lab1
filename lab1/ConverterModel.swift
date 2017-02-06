//
//  ConverterModel.swift
//  lab1
//
//  Created by Admin on 06.02.17.
//  Copyright © 2017 arthur. All rights reserved.
//

import UIKit

class ConverterModel: NSObject {
    
    let coulInAmpere: Double = 3600
    let milliamperesInAmpere: Double = 1000
    public var voltage: Double = 0
    public var capacity: Double = 0
    public override init(){}
    
    public func convertToCoulHours()->String{
        let convertedVaule: Double = capacity/milliamperesInAmpere * coulInAmpere
        let resultString: String = String(convertedVaule) + " Кл*ч"
        
        return resultString
        
    }
    public func convertToWattHours()->String{
        let convertedVaule: Double = capacity/milliamperesInAmpere * voltage
        let resultString: String = String(convertedVaule) + " Вт*ч"
        
        return resultString
    }
    
    public func convertToAmpereHours()->String{
        let convertedVaule: Double = capacity/milliamperesInAmpere
        let resultString: String = String(convertedVaule) + " А*ч"
        
        return resultString
    }
}
