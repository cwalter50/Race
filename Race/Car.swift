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
        name = "Test"
        lane = 1
        speed = 5
        color = UIColor.red
        getRandomSpeed()
    }
    
    init(theName: String, theLane: Int, theSpeed: Double, theColor: UIColor)
    {
        name = theName
        lane = theLane
        speed = theSpeed
        color = theColor
        getRandomSpeed()
    }
    
    // methods with classes
    func getRandomSpeed()
    {
        self.speed = Double.random(in: 2...5)
    }
    
}
