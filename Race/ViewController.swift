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
    var carAImageView: CarImageView = CarImageView()
    var carBImageView: CarImageView = CarImageView()
    var carCImageView: CarImageView = CarImageView()
    var carDImageView: CarImageView = CarImageView()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let carA = Car(theName: "A", theLane: 1, theSpeed: 3)

        carAImageView = CarImageView(c: carA)
        self.view.addSubview(carAImageView)
        
        
        let carB = Car(theName: "B", theLane: 2, theSpeed: 2)
        
        carBImageView = CarImageView(c: carB)
        view.addSubview(carBImageView)
        
        let carC = Car(theName: "C", theLane: 3, theSpeed: 2)
        carCImageView = CarImageView(c: carC)
        view.addSubview(carCImageView)
        
        let carD = Car(theName: "D", theLane: 4, theSpeed: 2)
        carDImageView = CarImageView(c: carD)
        view.addSubview(carDImageView)
    }

    @IBAction func startButtonTapped(_ sender: UIButton)
    {
        // refractor the repetitive code down by using a func..
        animateCar(theView: carAImageView)
        animateCar(theView: carBImageView)
        animateCar(theView: carCImageView)
        animateCar(theView: carDImageView)
        
        // comment the code after refractoring down the code.
//        UIView.animate(withDuration: carALabel.car.speed, delay: 0.0, options: UIView.AnimationOptions.curveEaseIn, animations: {
//
//            self.carALabel.center = CGPoint(x: self.carALabel.center.x, y: -100)
//
//        }, completion: {action in
//            self.carALabel.resetPositionAndSpeed()
//        }
//        )
//
//        UIView.animate(withDuration: carBLabel.car.speed, animations: {
//            self.carBLabel.center = CGPoint(x: self.carBLabel.center.x, y: -100)
//        }, completion: {
//            action in
//            self.carBLabel.resetPositionAndSpeed()
//        })
//
//        UIView.animate(withDuration: carCLabel.car.speed, animations: {
//            self.carCLabel.center = CGPoint(x: self.carCLabel.center.x, y: -100)
//        }, completion: {
//            action in
//            self.carCLabel.resetPositionAndSpeed()
//        })
//
//        UIView.animate(withDuration: carDLabel.car.speed, animations: {
//            self.carDLabel.center = CGPoint(x: self.carDLabel.center.x, y: -100)
//        }, completion: {
//            action in
//            self.carDLabel.resetPositionAndSpeed()
//        })
//
    }
    
    func animateCar(theView: CarImageView) {
        UIView.animate(withDuration: theView.car.speed, animations: {
             theView.center = CGPoint(x: theView.center.x, y: -100)
         }, completion: {
             action in
            
             theView.resetPositionAndSpeed()
         })
    }
    
}

