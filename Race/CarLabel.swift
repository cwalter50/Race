//
//  CarLabel.swift
//  Race
//
//  Created by  on 10/17/19.
//  Copyright © 2019 DocsApps. All rights reserved.
//

import UIKit

class CarLabel: UILabel {
    
    var car: Car
    
    init(c: Car)
    {
        car = c
        
        // set the cars at the bottom of the screen based on their lanes.  
        let screenHeight = UIScreen.main.bounds.height
        let frame = CGRect(x:  75 * car.lane, y: Int(screenHeight - 100), width: 50, height: 100)
        
        super.init(frame: frame)
        
        self.text = car.name
        self.backgroundColor = car.color
        self.textAlignment = .center
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func resetPositionAndSpeed()
    {
        self.center = CGPoint(x: self.center.x, y: UIScreen.main.bounds.height - 100)
        
        self.car.getRandomSpeed()
    }
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
