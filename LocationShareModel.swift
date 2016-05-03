//
//  LocationShareModel.swift
//  LocationSwing
//
//  Created by Marc Pellus on 5/02/16.
//  Copyright (c) 2016 Marc Pellus. All rights reserved.
//

import Foundation
import UIKit

class LocationShareModel : NSObject {
    var timer : NSTimer?
    var delay10Seconds: NSTimer?
    var bgTask : BackgroundTaskManager?
    var myLocationArray : NSMutableArray?
    
    func sharedModel()-> AnyObject {
        struct Static {
            static var sharedMyModel : AnyObject?
            static var onceToken : dispatch_once_t = 0
        }
        dispatch_once(&Static.onceToken) {
            Static.sharedMyModel = LocationShareModel()
        }
        return Static.sharedMyModel!
    }
}
