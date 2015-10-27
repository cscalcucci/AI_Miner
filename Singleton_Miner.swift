//
//  Singleton_Miner.swift
//  AI_Miner
//
//  Created by Christopher Scalcucci on 10/14/15.
//  Copyright © 2015 Aphelion. All rights reserved.
//

import Foundation

class Agent {

}

class State {

}

enum Location : String {
    case Mine = "Mine"
    case Bar = "Bar"
    case Bank = "Bank"
    case Home = "Home"
}

enum Item_Type : String {
    case Gold = "Gold"

}

class Item {

    var type : Item_Type!
    var amount : Int = 0

    init(type: Item_Type) {
        self.type = type
    }

}



// ==================== Agents ==================== //

class Singleton_Miner : Agent {

    static let sharedInstance = Singleton_Miner()

    var location : Location = Location.Home
    var name: String!

    var gold = Item(type: Item_Type.Gold)

    var energy : Int = 10

    private override init() {
        super.init()
    }

    func changeLocation(newLocation: Location) {
        location = newLocation
    }

    func increaseItem(item: Item, amount: Int) {
        item.amount += amount
    }

    func decreaseEnergy(amount: Int) {
        energy -= amount
    }

    func checkState() {
        switch self.location {
            case Location.Mine : break
            case Location.Bar  : break
            case Location.Bank : break
            case Location.Home : break
        }
    }

    func 


}

// ==================== States ==================== //


class Mine : State {

    static let sharedInstance = Mine()

    var miner : Singleton_Miner?

    private override init() {
        super.init()
    }

    func enter(miner: Singleton_Miner) {

        if miner.location != Location.Mine {
          print("\(miner.name): Entering Gold Mine")
        }

        miner.changeLocation(Location.Mine)

    }

    func execute(miner: Singleton_Miner) {

        let foundAmount = 1

        miner.increaseItem(miner.gold, amount: foundAmount)
        miner.decreaseEnergy(1)

    }

    func exit(miner: Singleton_Miner) {

    }

}
