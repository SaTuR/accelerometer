//
//  ViewController.swift
//  accelerometer
//
//  Created by Integro on 10/04/17.
//  Copyright © 2017 nextu. All rights reserved.
//

import UIKit
import CoreMotion
class ViewController: UIViewController {

    @IBOutlet weak var movableView: UIView!
    
    
    
    
    var screenCenterX: CGFloat!
    var screenCenterY: CGFloat!
    var updateHandler: AccelerometerHandler!
    let accelerometerInstance = AccelerometerManager.instance
    override func viewDidLoad() {
        super.viewDidLoad()
        self.movableView.translatesAutoresizingMaskIntoConstraints = false
        self.screenCenterX = self.view.frame.size.width / 2
        self.screenCenterY = self.view.frame.size.height / 2
        
        
        self.centerView()
        
        self.updateHandler = {
            (data, error) in
            
            
            let tx = Double(data!.acceleration.x * 50)
            let ty = Double(data!.acceleration.y * 50)
            
            if self.accelerometerInstance.isVertical {
                self.movableView.transform = CGAffineTransform(translationX: CGFloat(0), y: CGFloat(ty))
            } else {
                self.movableView.transform = CGAffineTransform(translationX: CGFloat(tx), y: CGFloat(0))
            }
        }
        
        
        self.accelerometerInstance.start(updateHandler: updateHandler)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func centerView(){
        self.movableView.frame.origin.x = self.screenCenterX - (self.movableView.frame.size.width / 2)
        self.movableView.frame.origin.y = self.screenCenterY - (self.movableView.frame.size.height / 2)
        
    }
    
    @IBAction func horizontal(_ sender: Any) {
        accelerometerInstance.isVertical = false
    }
    @IBAction func vertical(_ sender: Any) {
        accelerometerInstance.isVertical = true
    }
    


}

