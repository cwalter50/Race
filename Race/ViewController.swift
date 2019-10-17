//
//  ViewController.swift
//  Race
//
//  Created by  on 10/17/19.
//  Copyright © 2019 DocsApps. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{

    var carALabel: CarLabel!
    var carBLabel: CarLabel!
    var carCLabel: CarLabel!
    var carDLabel: CarLabel!
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let carA = Car(theName: "A", theLane: 1, theSpeed: 3, theColor: UIColor.red)

        carALabel = CarLabel(c: carA)
        self.view.addSubview(carALabel)
        
        let carB = Car(theName: "B", theLane: 2, theSpeed: 2, theColor: UIColor.blue)
        
        carBLabel = CarLabel(c: carB)
        view.addSubview(carBLabel)
        
        let carC = Car(theName: "C", theLane: 3, theSpeed: 2, theColor: UIColor.green)
        carCLabel = CarLabel(c: carC)
        
        view.addSubview(carCLabel)
        
        let carD = Car(theName: "D", theLane: 4, theSpeed: 2, theColor: UIColor.orange)
        carDLabel = CarLabel(c: carD)
        
        view.addSubview(carDLabel)
    }

    @IBAction func startButtonTapped(_ sender: UIButton)
    {
        
      
        UIView.animate(withDuration: carALabel.car.speed, delay: 0.0, options: UIView.AnimationOptions.curveEaseIn, animations: {

            self.carALabel.center = CGPoint(x: self.carALabel.center.x, y: -100)

        }, completion: {action in
            self.carALabel.resetPositionAndSpeed()
        }
        )
        
        UIView.animate(withDuration: carBLabel.car.speed, animations: {
            self.carBLabel.center = CGPoint(x: self.carBLabel.center.x, y: -100)
        }, completion: {
            action in
            self.carBLabel.resetPositionAndSpeed()
        })
        
        UIView.animate(withDuration: carCLabel.car.speed, animations: {
            self.carCLabel.center = CGPoint(x: self.carCLabel.center.x, y: -100)
        }, completion: {
            action in
            self.carCLabel.resetPositionAndSpeed()
        })
        
        UIView.animate(withDuration: carDLabel.car.speed, animations: {
            self.carDLabel.center = CGPoint(x: self.carDLabel.center.x, y: -100)
        }, completion: {
            action in
            self.carDLabel.resetPositionAndSpeed()
        })
        

        
    }
    
}

