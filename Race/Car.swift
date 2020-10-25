//
//  Car.swift
//  Race
//
//  Created by  on 10/17/19.
//  Copyright © 2019 DocsApps. All rights reserved.
//

import UIKit

class Car
{
    // Properties
    var name: String
    var lane: Int
    var speed: Double
    var color: UIColor
    
    // initializers: How do we create new cars
    init()
    {
        name = "E"
        lane = 1
        speed = 5
        getRandomSpeed()
    }
    init(theName: String, theLane: Int, theSpeed: Double)
    {
        name = theName
        lane = theLane
        speed = theSpeed
        getRandomSpeed()
    }
    // methods with classes
    func getRandomSpeed()
    {
        self.speed = Double.random(in: 2...5)
    }
    
}
