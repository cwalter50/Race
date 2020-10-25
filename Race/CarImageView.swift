//
//  CarImageView.swift
//  Race
//
//  Created by  on 10/25/20.
//  Copyright © 2020 DocsApps. All rights reserved.
//

import UIKit

class CarImageView: UIImageView {

    var car: Car
    
    init(c: Car)
    {
        car = c
        super.init(image: UIImage(named: car.name))
        
        let screenHeight = UIScreen.main.bounds.height
        let frame = CGRect(x:  75 * car.lane, y: Int(screenHeight - 100), width: 50, height: 100)
        self.frame = frame
    }
    init()
    {
        car = Car()
        let screenHeight = UIScreen.main.bounds.height
        let frame = CGRect(x:  75 * 1, y: Int(screenHeight - 100), width: 50, height: 100)
        super.init(frame: frame)
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
