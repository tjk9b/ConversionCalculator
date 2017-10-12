//
//  model.swift
//  ConversionCalculator
//
//  Created by Tomer Negrin on 10/5/17.
//  Copyright © 2017 Tiara Jarrett. All rights reserved.
//

import Foundation
import UIKit


class ConversionCalculator {
    var inputValueString = ""

    var input: Double {
        return Double(inputValueString) ?? 0.0
    }
    
    func clearInput() {
        inputValueString = ""
    }
    
//    func backspaceInput() {
//        inputValueString.dropLast()
//    }
//
//    inputValueString.backspaceInput()
//
//    print(inputValueString)

    func append(digit: Int) {
        inputValueString += String(digit)
    }
    
    func appendDecimal() {
        guard !inputValueString.contains(".") else {return}
   
        if inputValueString.isEmpty {
            inputValueString += "0."
        } else {
            inputValueString += "."
        }
    }
    
//    func checkNegativity(negative: Bool) {
//        if negative {
//            if let check: Double = Double(inputValueString)
//            Double(inputValueString) =
//
//        }
//    }
    
    //The Following are length conversions based on Feet, Yards, Inches, and Centimeters
    func tempConversion(unitFarenheit: Bool, temp: Double) -> Double {
        if unitFarenheit {
            let convertedTemp: Double = (temp - 32) * (5/9)
            return convertedTemp
        } else {
            let convertedTemp: Double = (temp * (9/5)) + 32
            return convertedTemp
        }
    }
    
    func inchConversion(conversionUnit: String, inches: Double) -> Double {
        switch conversionUnit {
            case "centimeter":
                let centimeters: Double = inches * 2.54
                return centimeters
            
            case "foot":
                let feet: Double = inches / 12
                return feet
            
            case "meter":
                let meters: Double = inches * 0.0254
                return meters
            
            case "yard":
                let yards: Double = inches * 0.028
                return yards
            
            default:
            break
        }
        
        return 0.0
    }
    
    func centimeterConversion(conversionUnit: String, centimeters: Double) -> Double {
        switch conversionUnit {
        case "inch":
            let inches: Double = centimeters * 0.39
            return inches
            
        case "foot":
            let feet: Double = centimeters * 0.03
            return feet
            
        case "meter":
            let meters: Double = centimeters * 0.01
            return meters
            
        case "yard":
            let yards: Double = centimeters * 0.0109361
            return yards
            
        default:
            break
        }
        
        return 0.0
    }
    
    func footConversion(conversionUnit: String, feet: Double) -> Double {
        switch conversionUnit {
        case "centimeter":
            let centimeters: Double = feet * 30.48
            return centimeters
            
        case "inch":
            let inches: Double = feet * 12
            return inches
            
        case "meter":
            let meters: Double = feet * 0.305
            return meters
            
        case "yard":
            let yards: Double = feet * 0.33
            return yards
            
        default:
            break
        }
        
        return 0.0
    }
    
    func meterConversion(conversionUnit: String, meters: Double) -> Double {
        switch conversionUnit {
        case "centimeter":
            let centimeters: Double = meters * 100
            return centimeters
            
        case "foot":
            let feet: Double = meters * 3.28084
            return feet
            
        case "inch":
            let inches: Double = meters * 39.3701
            return inches
            
        case "yard":
            let yards: Double = meters * 0.2898399
            return yards
            
        default:
            break
        }
        
        return 0.0
    }
    
    func yardConversion(conversionUnit: String, yards: Double) -> Double {
        switch conversionUnit {
        case "centimeter":
            let centimeters: Double = yards * 91.44
            return centimeters
            
        case "foot":
            let feet: Double = yards * 3
            return feet
            
        case "meter":
            let meters: Double = yards * 0.91
            return meters
            
        case "inch":
            let inches: Double = yards * 36
            return inches
            
        default:
            break
        }
        
        return 0.0
    }
    
    //The Following are volume conversion based on Tablespoons, Teaspoons, and Cups
    func teaspoonConversion(conversionUnit: String, teaspoons: Double) -> Double {
        switch conversionUnit {
        case "tablespoon":
            let tablespoons: Double = teaspoons * 0.33
            return tablespoons
            
        case "cup":
            let cups: Double = teaspoons * 0.0208333
            return cups
            
        default:
            break
        }
        
        return 0.0
    }
    
    func tablespoonConversion(conversionUnit: String, tablespoons: Double) -> Double {
        switch conversionUnit {
        case "teaspoon":
            let teaspoons: Double = tablespoons * 3
            return teaspoons
            
        case "cup":
            let cups: Double = tablespoons * 0.0625
            return cups
            
        default:
            break
        }
        
        return 0.0
    }
    
    func cupConversion(conversionUnit: String, cups: Double) -> Double {
        switch conversionUnit {
        case "tablespoon":
            let tablespoons: Double = cups * 16
            return tablespoons
            
        case "teaspoon":
            let teaspoons: Double = cups * 48
            return teaspoons
            
        default:
            break
        }
        
        return 0.0
    }
    
    //The Following are weight conversions based on Pounds and Ounces
    func poundConversion(conversionUnit: String, pounds: Double) -> Double {
        if(conversionUnit == "pound") {
            let ounces = pounds * 16
            return ounces
        } else {
            return 0.0
        }
    }
    
    func ounceConversion(conversionUnit: String, ounces: Double) -> Double {
        if(conversionUnit == "ounce") {
            let pounds = ounces * 0.0625
            return pounds
        } else {
            return 0.0
        }
    }
}
