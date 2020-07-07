//
//  main.swift
//  Lesson3
//
//  Created by Feniks on 07.07.2020.
//  Copyright © 2020 Feniks. All rights reserved.
//
import Foundation


struct PassengerCar {
    let model: String
    let year: Int
    let trunkVolume: Int
    var runningEngine: Bool
    var windowsOpen: Int //процент открытия окна
    var filledTrunkVolume: Int
    
    mutating func launch (an action: ActionsWithCar) {
        switch action {
        case .closeWindow:
            windowsOpen = 0
        case .openWindow:
            windowsOpen = 100
        case .openWindow50:
            windowsOpen = 50
        case .startCar:
            runningEngine = true
            windowsOpen = 10
        case .stopCar:
            runningEngine = false
            windowsOpen = 0
        case .loadCargo100:
            filledTrunkVolume = trunkVolume
        case .loadCargo50:
            filledTrunkVolume = trunkVolume/2
        case .unloadCargo50:
            filledTrunkVolume = filledTrunkVolume/2
        case .unloadCargo100:
            filledTrunkVolume = 0
        }
    }
}

struct TrackCar {
    enum NumberAxles {
        case two, three, four
    }
    let model: String
    let year: Int
    let trunkVolume: Int
    var runningEngine: Bool
    var windowsOpen: Int 
    var filledTrunkVolume: Int
    let numberAxles: NumberAxles
    
    mutating func launch (an action: ActionsWithCar) {
        switch action {
        case .closeWindow:
            windowsOpen = 0
        case .openWindow:
            windowsOpen = 100
        case .openWindow50:
            windowsOpen = 50
        case .startCar:
            runningEngine = true
            windowsOpen = 10
        case .stopCar:
            runningEngine = false
            windowsOpen = 0
        case .loadCargo100:
            filledTrunkVolume = trunkVolume
        case .loadCargo50:
            filledTrunkVolume = trunkVolume/2
        case .unloadCargo50:
            filledTrunkVolume = filledTrunkVolume/2
        case .unloadCargo100:
            filledTrunkVolume = 0
        }
    }
}

enum ActionsWithCar {
    case startCar, stopCar, openWindow, openWindow50, closeWindow, loadCargo50, loadCargo100, unloadCargo50, unloadCargo100 // цифровое значение в перечислении означает на сколько процентов выполнить действие
}

var car1 = PassengerCar(model: "VAZ", year: 2008, trunkVolume: 300, runningEngine: true, windowsOpen: 0, filledTrunkVolume: 0)

var car2 = PassengerCar(model: "Renault", year: 2019, trunkVolume: 350, runningEngine: false, windowsOpen: 100, filledTrunkVolume: 200)

var car3 = PassengerCar(model: "BMW", year: 1985, trunkVolume: 300, runningEngine: false, windowsOpen: 50, filledTrunkVolume: 100)

var car4 = TrackCar(model: "Man", year: 1995, trunkVolume: 20000, runningEngine: true, windowsOpen: 100, filledTrunkVolume: 0, numberAxles: .four)

var car5 = TrackCar(model: "Kamaz", year: 2000, trunkVolume: 15000, runningEngine: false, windowsOpen: 0, filledTrunkVolume: 10000, numberAxles: .three)

var car6 = TrackCar(model: "ZIL", year: 1970, trunkVolume: 5000, runningEngine: true, windowsOpen: 30, filledTrunkVolume: 1000, numberAxles: .two)


car1.launch(an: .stopCar)
car2.launch(an: .closeWindow)
car3.launch(an: .startCar)
car4.launch(an: .loadCargo100)
car5.launch(an: .unloadCargo50)
car6.launch(an: .openWindow)

print(car1)
print(car2)
print(car3)
print(car4)
print(car5)
print(car6)


