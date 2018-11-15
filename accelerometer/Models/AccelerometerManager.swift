//
//  AccelerometerManager.swift
//  accelerometer
//
//  Created by Integro on 10/04/17.
//  Copyright © 2017 nextu. All rights reserved.
//

import CoreMotion


typealias AccelerometerHandler = (CMAccelerometerData?, Error?) -> Void
class AccelerometerManager {
    
    static let instance = AccelerometerManager()
    let manager = CMMotionManager()
    
    var isVertical = false
    
    private init(){
        setup()
    }
    
    private func setup() {
        manager.accelerometerUpdateInterval = 0.1
    }
    
    func start(updateHandler: @escaping AccelerometerHandler) {
        manager.startAccelerometerUpdates(to: OperationQueue.current!) { (data, error) in
            updateHandler(data, error)
        }
        
    }
    
}
