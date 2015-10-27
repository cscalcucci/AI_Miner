//
//  Miner.swift
//  AI_Miner
//
//  Created by Christopher Scalcucci on 9/10/15.
//  Copyright (c) 2015 Aphelion. All rights reserved.
//

import Foundation

class Miner: NSObject {

    enum Location : String {
        case Mine = "Mine"
        case Bar = "Bar"
        case Bank = "Bank"
        case Home = "Home"
    }

    struct Status {
        enum Type : String {
            case Wealth = "Wealth"
            case Thirst = "Thirst"
            case Capacity = "Capacity"
            case Fatigue = "Fatigue"
        }

        //Status
        var wealthy : Bool = false
        var thirsty : Bool = false
        var tired : Bool = false

        init(type: Type) {

        }

        func checkStatus(type: Type) {
            switch type {
                case .Wealth : break
                case .Thirst : if amount < 5 { validity = false}; break
                case .Capacity : if amount < 4 { validity = false}; break
                case .Fatigue : if amount  { validity = false}; break
            }

            return validity
        }



    }




    //Items
    var ore : Int = 0 {
        didSet {
//            updateStatus(Status.Capacity)
        }
    }
    var savings : Int = 0 {
        didSet {
//            updateStatus(Status.Wealth)
        }
    }

    var drinks : Int = 0
    var energy : Int = 10

    //Location
    var location = Location.Home

    //Age
    var age : Int = 0

    func enterLocation() {
        switch location {
            case .Mine : break
            case .Bar : break
            case .Bank : break
            case .Home : break
        }
    }

    func updateLocation() {
        switch location {
            case .Mine : break
            case .Bar : break
            case .Bank : break
            case .Home : break
        }
    }

    func exitLocation() {
        switch location {
            case .Mine : break
            case .Bar : break
            case .Bank : break
            case .Home : break
        }
    }



}
